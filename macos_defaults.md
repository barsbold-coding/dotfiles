# Some useful commands for MacOS defaults

## Make dock animation faster
```bash
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.45
killall Dock
```
