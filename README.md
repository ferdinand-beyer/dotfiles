# dotfiles
Ferdinand's dotfiles

Uses [dotbot][dotbot] to install the setup.

## Installation
1. Clone this repo locally.  The recommended local directory is: `~/.local/pkg/dotfiles`.
2. `cd` into the local directory.
3. Run `./install`

## Tools

### Powerlevel 10k
One-time configuration to install custom fonts:
```
p10k configure
```

### iTerm 2
```
brew install --cask iterm2
```

Setup:
* _iTerm2_, _Preferences..._, _General_, _Preferences_, _Load preferences from a custom folder or URL_
* `~/.config/iterm2/custom`

### nvim
```
brew install nvim
```

Start and run: `:PluginInstall`


[dotbot]: https://github.com/anishathalye/dotbot
