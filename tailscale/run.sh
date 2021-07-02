#!/usr/bin/with-contenv bashio

# Enable job control
set -eum

CONFIG_PATH=/data/options.json
TAILSCALE_SOCKET="/var/run/tailscale/tailscaled.sock"
TAILSCALE_FLAGS=()
TAILSCALED_FLAGS=("-state" "/data/tailscaled.state" "-socket" "$TAILSCALE_SOCKET")

# Parse config to construct `tailscale up` args
if bashio::config.has_value 'auth_key'; then
    TAILSCALE_FLAGS+=('-authkey' "$(bashio::config 'auth_key')")
fi

if bashio::config.has_value 'force_reauth'; then
    if bashio::config.true 'force_reauth'; then
        TAILSCALE_FLAGS+=('-force-reauth')
    fi
fi

if bashio::config.has_value 'hostname'; then
    TAILSCALE_FLAGS+=('-hostname' "$(bashio::config 'hostname')")
fi

if bashio::config.has_value 'advertise_routes'; then
    TAILSCALE_FLAGS+=('-advertise-routes' "$(bashio::config 'advertise_routes')")
fi

if bashio::config.has_value 'advertise_exit_node'; then
    if bashio::config.true 'advertise_exit_node'; then
        TAILSCALE_FLAGS+=('-advertise-exit-node')
    fi
fi

if bashio::config.has_value 'accept_routes'; then
    if bashio::config.true 'accept_routes'; then
        TAILSCALE_FLAGS+=('-accept-routes')
    fi
fi

if bashio::config.has_value 'exit_node'; then
    TAILSCALE_FLAGS+=('-exit-node' "$(bashio::config 'exit_node')")
fi

if bashio::config.has_value 'port'; then
    TAILSCALED_FLAGS+=('-port', "$(bashio::config 'port')")
fi

# Start tailscaled in the background
tailscaled -cleanup ${TAILSCALED_FLAGS[@]}
tailscaled ${TAILSCALED_FLAGS[@]} & 

# Loop to wait for tailscaled to start
i=0
while test $i -lt 12; do
    if test -e "$TAILSCALE_SOCKET"; then
        # bring up the tunnel and fd tailscaled
        tailscale -socket "$TAILSCALE_SOCKET" up ${TAILSCALE_FLAGS[@]} && fg
        exit $?
    else
        i+=1
        echo "tailscaled not started yet, sleeping 5s"
        sleep 5
    fi
done

echo "tailscaled never started"
exit 1