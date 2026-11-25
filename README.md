# sventmueller/tap

Homebrew casks for [Splat](https://github.com/sventmueller/splat), the Markdown editor for macOS with a live, editable preview, [Lowspeak](https://github.com/sventmueller/lowspeak), dictation from the menu bar, [Dango](https://github.com/sventmueller/dango), the editor for working with coding agents, and [Tapa](https://github.com/sventmueller/tapa), the terminal with workspaces and agents.

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

## Dango

```sh
brew install --cask sventmueller/tap/dango
```

Dango needs macOS 14 or later on Apple Silicon or Intel. It updates itself through **Dango › Check for Updates…**; `brew upgrade --cask dango` installs new versions of an older copy as well. `brew uninstall --zap --cask dango` also removes its settings, caches and the worktrees of its agents' threads.

## Tapa

```sh
brew install --cask sventmueller/tap/tapa
```

Tapa needs macOS 14 or later on Apple Silicon or Intel. It updates itself through **Tapa › Check for Updates…**; `brew upgrade --cask tapa` installs new versions of an older copy as well. `brew uninstall --zap --cask tapa` also removes its settings, caches and stored windows; dictation keys stay in the login keychain.
