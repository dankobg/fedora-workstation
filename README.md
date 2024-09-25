{{ ansible_managed | comment }} adds managed by ansible haders to start of document

TODO: improvements
maybe some smoke tests
e.g. get_uri: with retries, delay and until 'xxx' in result.content
retries until for nvidia drivers...

TODO: roles

- rust
- zed

roles that perform some changes:

- gnome

TODO: verify checksums for manuall downloads for apps:

- [] syncthing
- [] bw-cli
- [] devspace
- [] docker
- [] eza
- [] fastfetch
- [] gh-cli
- [] glow
- [] go
- [] golangci-lint
- [] goreleaser
- [] hostctl
- [] jq
- [] just
- [] k3d
- [] k9s
- [] kanata
- [] kitty
- [] ksops
- [] kubectl
- [] kubectx
- [] kubens
- [] kustomize
- [] lazydocker
- [] lazygit
- [] nerdfonts
- [] node
- [] rclone
- [] restic
- [] sops
- [] task
- [] yq
- [] zellij

- Template replace all danko hardcoded...
- Make better default vars...
