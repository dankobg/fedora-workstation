{{ ansible_managed | comment }} adds managed by ansible haders to start of document

<!--
x86_64:
  amd64:
  x86:
  aarch64:
  arm64:
  armv9l:
  armv8l:
  armv7l:
  armv6l:
  aarch32:
  s390x:
  i386:
  i686:
  ppc64le:
 -->

not fully idempotent yet, they make small changes:

- docker (hmm need to see what is going on, takes a bit of time. Should be idempotent because it's only dnf module. Ensure old deleted - says changed even though they dont exist)
- go (go install tools like gopls,dlv,goimports etc. Don't know how to make it idempotent)

TODO: verify checksums for manuall downloads for apps:

- [] atlas
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

TODO: some other stuff

bash completions or man pages etc.

- [] eza
