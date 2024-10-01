{{ ansible_managed | comment }} adds managed by ansible haders to start of document

TODO: improvements
maybe some smoke tests
e.g. get_uri: with retries, delay and until 'xxx' in result.content
retries until for nvidia drivers...

not fully idempotent yet, they make small changes:

- gnome (always loads my dconf settings file...)
- docker
- go (go install go tools apps, maybe i can use go mod checksum somehow)
- ksops (too lazy, it doesn't expose --version flag or similar)

TODO: verify checksums for manuall downloads for apps:

- [] bw
- [] devspace
- [] docker
- [] eza
- [] fastfetch
- [] gh
- [] glow
- [] go
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
- [] syncthing
- [] task
- [] yq
- [] zellij

- Template replace all danko hardcoded...
- Make better default vars...
