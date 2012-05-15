VI and tcsh dotfiles
====================

This is just a simple .cshrc and .vimrc for quick HTML editing.

Step 1: Clone and link .cshrc and .vimrc
----------------------------------------

  ```sh
  % git clone git://github.com/rm8t/dotfiles ~/.dotfiles
  % cd .dotfiles
  % ./install
  ```

Step 2: Install VIM plugins
---------------------------

  ```sh
  % git submodule update --init
  % update-bundles\vim-update-bundles
  ```

Notes
-----
I normally place all of my software projects in ~/projects.
You also need a ~/bin file if you want the dotfiles/bin to link.

Inspiration from:
* http://github.com/ryanb/dotfiles
* http://errtheblog.com/posts/89-huba-huba

Enjoy!
