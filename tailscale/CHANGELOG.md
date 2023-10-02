# Changelog

## 1.50.1.0
- Tailscale package updated to version `1.50.1`

## 1.50.0.0
- Tailscale package updated to version `1.50.0`

## 1.48.2.0
- Tailscale package updated to version `1.48.2`

## 1.48.1.0
- Tailscale package updated to version `1.48.1`

## 1.48.0.0
- Tailscale package updated to version `1.48.0`

## 1.46.1.0
- Tailscale package updated to version `1.46.1`

## 1.46.0.0
- Tailscale package updated to version `1.46.0`

## 1.44.2.0
- Tailscale package updated to version `1.44.2`

## 1.44.0.0
- Tailscale package updated to version `1.44.0`

## 1.42.0.0
- Tailscale package updated to version `1.42.0`

## 1.40.1.0
- Tailscale package updated to version `1.40.1`

## 1.40.0.0
- Tailscale package updated to version `1.40.0`

## 1.38.4.0
- Tailscale package updated to version `1.38.4`

## 1.38.3.0
- Tailscale package updated to version `1.38.3`

## 1.38.2.0
- Tailscale package updated to version `1.38.2`

## 1.38.1.0
- Tailscale package updated to version `1.38.1`

## 1.36.2.3
- Adds `disable_snat_subnet_routes` option

## 1.36.2.2

- Sets Userspace Networking as a default in new add-on installations. This appears to be the most compatible
  option out-of-the-box for most users.

## 1.36.2.1

- Adds `ping` package to Tailscale container

## 1.36.2.0

- Tailscale package updated to version `1.36.2`

## 1.36.1.0

- Tailscale package updated to version `1.36.1`

## 1.36.0.0

- Tailscale package updated to version `1.36.0`

## 1.34.2.1

- Adds `disable_dns` option for disabling MagicDNS for bug testing

## 1.34.2.0

- Tailscale package updated to version `1.34.2`

## 1.34.1.0

- Tailscale package updated to version `1.34.1`

## 1.34.0.0

- Tailscale package updated to version `1.34.0`

## 1.32.3.0

- Tailscale package updated to version `1.32.3`

## 1.32.2.1

- Adds `ssh` as a configuration option, enabling the ability to use Tailscale's SSH feature to connect to the container (contributed by @Mincka)

## 1.32.2.0

- Tailscale package updated to version `1.32.2`

## 1.32.0.0

- Tailscale package updated to version `1.32.0`

## 1.30.2.0

- Tailscale package updated to version `1.30.2`
- Added the `reset` option

## 1.30.1.0

- Tailscale package updated to version `1.30.1`

## 1.30.0.0

- Tailscale package updated to version `1.30.0`

## 1.28.0.0

- Tailscale package updated to version `1.28.0`

## 1.26.2.2

- Tailscale package updated to version `1.26.2`

## 1.26.2.1

- Rolling back `1.26.2` update as binaries were removed from mirror

## 1.26.2.0

- Tailscale package updated to version `1.26.2`

## 1.26.1.0

- Tailscale package updated to version `1.26.1`

## 1.26.0.0

- Tailscale package updated to version `1.26.0`

## 1.24.2.1

- The [S6-Overlay 3.x update](https://developers.home-assistant.io/blog/2022/05/12/s6-overlay-base-images/) caused the container not to start. The `init: false` option was added to the addon's config to remediate.

## 1.24.2.0

- Tailscale package updated to version `1.24.2`

## 1.24.1.0

- Tailscale package updated to version `1.24.1`

## 1.24.0.0

- Tailscale package updated to version `1.24.0`

## 1.22.2.0

- Tailscale package updated to version `1.22.2`

## 1.22.1.0

- Tailscale package updated to version `1.22.1`

## 1.22.0.0

- Tailscale package updated to version `1.22.0`

## 1.20.4.1

- Adds `login_server` as a configuration option, enabling the use of 3rd party login servers like Headscale (contributed by @JensKuehnel)

## 1.20.4.0

- Tailscale package updated to version `1.20.4`

## 1.20.2.0

- Tailscale package updated to version `1.20.2`

## 1.20.1.0

- Tailscale package updated to version `1.20.1`

## 1.20.0.0

- Tailscale package updated to version `1.20.0`

## 1.18.2.2

- Adds `cert_domain` as a UI configuration option

## 1.18.2.1

- Adds Tailscale TLS certificate generation support (contributed by @patlux)

## 1.18.2.0

- Tailscale package updated to version `1.18.2`

## 1.18.1.1

- Adds `-advertise-tags` support (contributed by @peterkeen)

## 1.18.1.0

- Tailscale package updated to version `1.18.1`

## 1.18.0.0

- Tailscale package updated to version `1.18.0`

## 1.16.0.0

- Tailscale package updated to version `1.16.0`

## 1.14.3.0

- Tailsacle package updatesd to version `1.14.3`

## 1.14.0.2

- Revert container to legacy iptables.

## 1.14.0.1

- Fix missing sysctl dependency.

## 1.14.0.0

- Tailscale package updated to version `1.14.0`

## 1.12.3.2

- Add `userspace_networking` support

## 1.12.3.1

- Rebased addon on Debian to alleviate [DNS issues](https://github.com/tsujamin/hass-addons/issues/16) at build time (contributed by @kusha)

## 1.12.3.0

- Tailscale package updated to version `1.12.3`

## 1.12.1.0

- Tailscale package updated to version `1.12.1`

## 1.10.2.0

- Tailscale package updated to version `1.10.2`

## 1.10.1.0

- Tailscale package updated to version `1.10.1`

## 1.10.0.1

- Add `accept_routes` support

## 1.10.0.0

- Tailscale package updated to version `1.10.0`

## 1.8.7.0

- Tailscale package updated to version `1.8.7`

## 1.8.5.0

- Tailscale package updated to version `1.8.5`

## 1.8.3.1

- Add `exit_node` support (contributed by @jackmac92)

## 1.8.3.0

- Tailscale package updated to version `1.8.3` (contributed by @ClayKaiser)

## 1.8.0.0

- Tailscale package updated to version `1.8.0`

## 1.6.0.1

- Update device list to new config format (contributed by @erdii)
- Add `advertise_exit_node` support

## 1.6.0.0

- Tailscale package updated to version `1.6.0` (contributed by @ClayKaiser)
- Add `advertise_routes` support (contributed by @chrischdi)

## 1.4.5.0

- Tailscale package updated to version `1.4.5`

## 1.4.4.0

- Tailscale package updated to version `1.4.4`

## 1.4.2.0

- Tailscale package updated to version `1.4.2`

## 1.4.1.0

- Tailscale package updated to version `1.4.1`

## 1.2.10.0

- Initial add-on release
- Tailscale package updated to version `1.2.10`
