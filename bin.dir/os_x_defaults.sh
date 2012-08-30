!#/bin/sh

# Based on https://github.com/mathiasbynens/dotfiles/blob/master/.osx.
# And http://www.johnkastler.net/2011/12/25/os-x-defaults/
# And https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs).
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Expand save panel by default."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable the 'Are you sure you want to open this application?' dialog.
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Reverse scroll direction like it should be
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

########################################
# Trackpad 

# Enable tap to click (Trackpad) for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

########################################
# Dock 

# Minimize to the app icon instead of the slots on the dock bottom"
defaults write com.apple.Dock "minimize-to-application" -bool true

# Dock dock on the left instead of bottom"
defaults write com.apple.Dock orientation -string left

# Make hidden applications' dock icons translucent"
defaults write com.apple.Dock showhidden -bool YES 

# Smaller dock icon size"
defaults write com.apple.Dock tilesize -integer 40

# http://bengold.tv/post/21711266050
# Speed up dock show/hide animation."
defaults write com.apple.dock autohide-time-modifier -float 0.5

# Increase window resize speed for Cocoa applications."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001


########################################
# Keyboard 
# Set a fast keyboard repeat rate."
defaults write NSGlobalDomain KeyRepeat -int 2

# Set a shorter Delay until key repeat."
defaults write NSGlobalDomain InitialKeyRepeat -int 15

########################################
# Hot Corners

# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0

# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0

########################################
# Desktop 

# Show item info below desktop icons."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for desktop icons."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 56" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showIconPreview true" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:textSize 12" ~/Library/Preferences/com.apple.finder.plist

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :ShowHardDrivesOnDesktop true" ~/Library/Preferences/com.apple.finder.plist

########################################
# Filesystem

# Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Disable disk image verification."
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Automatically open a new Finder window when a volume is mounted."
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

########################################
# Finder

# Display full POSIX path as Finder window title."
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Show Path bar in Finder."
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder."
defaults write com.apple.finder ShowStatusBar -bool true

# Use current directory as default search scope in Finder."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## Show the ~/Library folder."
#chflags nohidden ~/Library

# defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# defaults write com.appple.loginwindow LoginWindowLaunchesRelaunchApps -bool false

########################################
# Apps

# Remove useless icons from Safari’s bookmarks bar
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

# Disable the Ping sidebar in iTunes."
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes."
defaults write com.apple.iTunes disablePing -bool true

# Make ⌘ + F focus the search input in iTunes
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

# Make TextEdit more like Notepad, i.e., default to plain text, not RTF
defaults write com.apple.TextEdit RichText -boolean false

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Disable automatic iTunes backup of iOS devices
defaults write com.apple.iTunes AutomaticDeviceBackupsDisabled -bool true


########################################
# Restart 

echo "Changed defaults. Restarting apps…"
killall Finder
killall Dock


