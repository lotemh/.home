# Homebrew

```bash
xcode-select --install
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
```

# Homebrew installations

```bash
brew install git bash-completion git-extras
brew install gpg pass
brew install osxfuse # and follow instructions in output
brew install mdbtools mtr ssh-copy-id sshfs unrar wget vim curl p7zip trash
brew install ddrescue duff fdupes rename testdisk tree fcrackzip links
brew install exif exiftool ffmpeg imagemagick jp2a mplayer sox youtube-dl mpg123
brew install ruby ack haskell-platform python nginx watch source-highlight
brew install cdparanoia lame abcde # see https://gist.github.com/danyshaanan/6494096 for abcde
brew install spark cowsay figlet wdiff
```

# brew-cask

```bash
brew tap phinze/homebrew-cask
brew install brew-cask
```

# brew-cask installations
```bash
brew cask install iterm2 atom
brew cask install truecrypt keepassx multibit
brew cask install google-chrome chromium firefox
brew cask install imagealpha imageoptim vlc phoenix-slides
brew cask install sublime-text brackets utorrent
brew cask install sequel-pro sqlite-database-browser github
brew cask install arduino # ftdi drivers also required
```

### Fix Finder
```bash
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
```
