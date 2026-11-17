# Homebrew tap for Ganit

This tap is the old home of the cask for
[Ganit](https://github.com/shantanugoel/ganit), a notepad calculator for Mac.
The cask now lives in the tap
[shantanugoel/homebrew-tap](https://github.com/shantanugoel/homebrew-tap),
together with my other casks and formulae.

For a new installation, use the new tap:

```bash
brew install --cask shantanugoel/tap/ganit
```

## Existing installations

Nothing is required. A workflow in this repository copies `Casks/ganit.rb`
from `shantanugoel/homebrew-tap` every hour. `brew upgrade` continues to find
each new release of Ganit through this tap. Do not change `Casks/ganit.rb` by
hand. The workflow replaces the file.

To move to the new tap, type these commands. Your sheets and settings stay
where they are.

```bash
brew uninstall --cask ganit
brew untap shantanugoel/ganit
brew install --cask shantanugoel/tap/ganit
```

Ganit needs macOS 14 or later on Apple silicon. Ganit updates itself, and
`brew upgrade` works too.
