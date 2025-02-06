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

- go (go install tools like gopls,dlv,goimports etc. Don't know how to make it idempotent)

TODO:

add bash completions or man pages for custom binary installs...
