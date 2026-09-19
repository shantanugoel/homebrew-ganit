# Homebrew tap for Ganit

The official [Homebrew](https://brew.sh) tap for
[Ganit](https://github.com/shantanugoel/ganit), a notepad calculator for Mac.

```bash
brew install --cask shantanugoel/ganit/ganit
```

Ganit needs macOS 14 or later on Apple silicon. The cask installs `Ganit.app`
and links the `ganit` command. Ganit updates itself; `brew upgrade` works too.

The cask points at the signed, notarized disk image on
[Ganit's releases page](https://github.com/shantanugoel/ganit/releases), and
Ganit's release workflow updates it with each release.
