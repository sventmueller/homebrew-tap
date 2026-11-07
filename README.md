# sventmueller/tap

Homebrew casks for [Splat](https://github.com/sventmueller/splat), the Markdown editor for macOS with a live, editable
preview, and [Lowspeak](https://github.com/sventmueller/lowspeak), dictation from the menu bar.

## Splat

```sh
brew install --cask sventmueller/tap/splat
```

Splat needs macOS 14 or later on Apple Silicon or Intel. From version 1.0.3 on, it updates itself through **Splat › Check for
Updates…**; `brew upgrade --cask splat` installs new versions of an older copy as well. `brew uninstall --zap --cask
splat` also removes its settings and caches.

## Lowspeak

```sh
brew install --cask sventmueller/tap/lowspeak
```

Lowspeak needs macOS 14 or later on Apple Silicon or Intel. From version 1.0.1 on, it updates itself through **Check for
Updates…** in its menu; `brew upgrade --cask lowspeak` installs new versions of an older copy as well. `brew uninstall
--zap --cask lowspeak` also removes its settings, models, logs and caches; the API keys stay in the login keychain.
