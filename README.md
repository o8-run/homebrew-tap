# o8 Homebrew tap

Install [o8](https://github.com/o8-run/o8), the review and merge layer for coding agents, with Homebrew:

```sh
brew trust o8-run/tap
brew install --cask o8-run/tap/o8
```

Current Homebrew loads casks from other taps only after you trust them, which is the first line.

o8 updates itself, so `brew upgrade` leaves it alone. `brew uninstall --cask o8` removes the app, and `brew uninstall --zap --cask o8` also removes its data and settings.

Requires macOS 14 or later. Universal app for Apple silicon and Intel Macs.
