{{ ansible_managed | comment }} adds managed by ansible haders to start of document

TODO: improvements
maybe some smoke tests
e.g. get_uri: with retries, delay and until 'xxx' in result.content
retries until for nvidia drivers...
make better default vars...

maybe use community.general.ssh_config:

x86_64
amd64
x86
i386
i686
aarch64
arm64
armv9l
armv8l
armv7l
armv6l
aarch32
ppc64le
s390x

not fully idempotent yet, they make small changes:

- gnome (always loads my dconf settings file... i might use just dconf module to set each thing up)
- docker (hm need to see what is going on)
- go (go install go tools apps, maybe i can use go mod checksum somehow)
- ksops (too lazy, it doesn't expose --version flag or similar, maybe i can track version separately)

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
