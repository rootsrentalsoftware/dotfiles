Dotfiles
==========================

These are the base dotfiles that I start with when I set up
a new environment.

🛠 Setup
--------

The setup process will:

* Download the dotfiles on your computer
  (by default it will suggest `~/projects/dotfiles`).
* Symlink the Git & Shell
* Install applications / command-line tools for MacOS
* Install Vs Code plugins.


🍏 Apple Silicon
----------------

For nodejs you have go into rosetta mode

```shell
softwareupdate --install-rosetta
arch -x86_64 bash
```
