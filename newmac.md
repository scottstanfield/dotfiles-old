---
Title: Vertigo developer setup on Mac
Author: Scott Stanfield
Date: 3/14/2012
---

Trick out your Mac, old-school Unix style
-----------------------------------------
The steps below assume you have a clean, fully patched Mac with Lion.
We used the little chip thing that you get from Apple to rebuild an older Mac.

Make sure your account is setup with admin privilages.  
After install, fully apply patches then continue.

Desktop
=======

* Turn off Scroll direction:natural
* Check for updates
* Dock on the left, remove unused icons
* Tweak keyboard repeat rate (key repeat=fast, delay=short)
* Turn on Firewall (Security & Preferences)

Chrome
======

* Make it the default browser
* Add it to the dock, under Finder
* Install vimium extension

Extensions
	1Password
	AdBlock
	dotjs (remove)
	Google +1 Button
	JoinTabs (optional)
	SessionBuddy
	Syntaxtic
	Vimium

CloudApp
========

Makes sharing screenshots and links trivial.
(Enable autoupload of screenshots)
SHIFT-COMMAND-4

XCODE
=====
Most of the homebrew packages need the compiler (and header and libraries)
previously only available after a full 4GB Xcode install from AppStore, then
choosing the optional Command Line Tools from the preference pane. 

But Apple now allows the installation of the Command Line Tools *without* 
needing to install Xcode. 

So if you have Xcode already, uninstall with
	$ sudo /Developer/Library/uninstall-devtools --mode=all

You need a free Apple ID to download the CLT, but go here to download.
http://https://developer.apple.com/downloads/index.action

As of this writing, Command Line Tools for Xcode - Late March 2012 is current.

Full story at http://kennethreitz.com/xcode-gcc-and-homebrew.html

iTerm 2
=======

Find [iTerm2](www.iTerm2.com) - beta version is fine.

> MIKE - CONTINUE HERE

BREW
====

Install instructions located at http://mxcl.github.com/homebrew/
If you are in love with MacPorts, read http://lostincode.net/blog/homebrew
Note: install requires you to run it from /bin/sh

	$ brew doctor
	$ brew install cowsay
	$ cowsay awesome

Change default shell
====================

Change your shell from bash to tcsh (temporary).
	
    $ chsh -s /bin/tcsh

GIT and HUB (and Hg for vim compile)
====================================

	$ brew install git
	$ brew install hub
	$ brew install mercurial
	$ brew install wget
	$ brew install ack


LESS
====
Brew does not install duplicates by default, so work with an alt fork

	$ brew tap homebrew/dupes
	$ brew install less 

Solarized
=========

	$ cd ~/projects/repos
	$ hub clone altercation/solarized

Then follow instructions under iterm2-colors-solarized folder to add the color
profiles to iTerm 2. I create two named profiles called "solarize-dark" and 
"solarized-light", each set to the corresponding color profile and Monoco 18pt.
Light is my default.

TODO
----
The rest of this section is still rough. Will finish soon.

RUBY
====
We need this for `Rake`, the Ruby make. 

	% brew install ruby

PYTHON
======
Sooner or later, you will need python, another fine language.
Install as "framework" per http://docs.python-guide.org/en/latest/starting/install/osx/

	% brew install python --framework

todo: install pip
todo: maybe not install virtualenv 
	http://kev.inburke.com/kevin/virtualenv-is-an-anti-pattern-for-beginners/

VIM
===
Install new version of vim (with +clipboard)

	$ md ~/tmp
	$ curl https://raw.github.com/gist/2581041 > ~/tmp/vim.rb
	$ brew install ~/tmp/vim.rb
	$ ln -s /usr/local/bin/vim /usr/local/bin/vi  # I still call it vi


ZSH
===
zsh (pronounced zee-shell) might be a good replacement for tcsh (tenix c shell).
It has better TAB completion than tcsh, but the syntax is kinda weird.

TODO: resarch ZSH more.

	$ ps -p $$		# see your current shell
	$ brew install zsh
	$ sudo chsh -s /usr/local/bin/zsh scott

# Setup oh-my-zsh

	$ hub clone sorin-ionescu/oh-my-zsh ~/.oh-my-zsh
	$ cd ~/.oh-my-zsh
	$ git submodule update --init --recursive
	$ cp cp templates/zshrc.zsh ~/.zshrc
	$ sudo mv /etc/zshenv /etc/profile
	$ logout

# NODE
	$ brew install node
	$ curl http://npmjs.org/install.sh | sh		# install npm

# Setup Perforce Visual Merge as gits visual tool (Mac OS only)
http://www.andymcintosh.com/?p=33
http://gitguru.com/2009/02/22/integrating-git-with-a-visual-merge-tool/
Install app from DMG. Add two 2 line sh scripts. Modify .gitconfig

# PARTY ON NODE/EXPRESS/JADE
# http://dandean.com/nodejs-npm-express-osx/
# Add app.use(express.logger("dev"));  

# THEN SEND IT OFF TO HEROKU



Install hub (teaches git about github)
http://defunkt.io/hub/

Consider using Makefile for .dotfiles like
https://github.com/domnikl/.home


# TODO

move to sorin zsh
build .dotfiles with make
xcode update (reboot first)
look into janus

screen shot app

note: moved macports crap with this:
sudo mv /opt/local tmp/macports

# Comment .vimrc with this
https://github.com/jeffbuttars/Viming-With-Buttars#vimoptions

[iTerm2]:(www.iterm2.com)


# VIM Tutorials

## Tutorials

* Type `vimtutor` into a shell to go through a brief interactive
  tutorial inside VIM.
* Read the slides at [VIM: Walking Without Crutches](http://walking-without-crutches.heroku.com/#1).
* Watch the screencasts at [vimcasts.org](http://vimcasts.org/)
* Watch Derek Wyatt's energetic tutorial videos at [his site](http://www.derekwyatt.org/vim/vim-tutorial-videos/)
* Read wycats' perspective on learning Vim at
    [Everyone who tried to convince me to use vim was wrong](http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/)
* Read this and other answers to a question about vim at StackOverflow:
	  [Your problem with Vim is that you don't grok vi](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118)

JavaScript Good Parts
=====================
Lambda
Closure
Dynamic Objects
Loose Typing
Object Liberals
JSON

Carl Hewit (Actor)

