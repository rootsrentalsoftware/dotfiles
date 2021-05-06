Dotfiles
==========================

These are the base dotfiles that I start with when I set up
a new environment (for more specific local needs I use the
[`*.local`](#local-settings) files).

🛠 Setup
--------

The setup process will:

* Download the dotfiles on your computer
  (by default it will suggest `~/projects/dotfiles`).
* Symlink the Git & Shell
* Install applications / command-line tools for MacOS
* Install Vs Code plugins.

🎨 Customize
------------

### Local Settings

The dotfiles can be easily extended to suit additional local
requirements by using the following files:

#### `~/.zshrc.local`

The `~/.zshrc.local` file will be automatically sourced after all
the other Zsh related files, thus, allowing its content
to add to or overwrite the existing aliases, settings, `PATH`, etc.

Here is an example:


```shell
#!/bin/bash

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set PATH additions.

PATH="/Users/alrra/projects/dotfiles/src/bin/:$PATH"

export PATH

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# Set local aliases.

alias g="git"
```

#### `~/.gitconfig.local`

The `~/.gitconfig.local` file will be automatically included after
the configurations from `~/.gitconfig`, thus, allowing its content
to overwrite or add to the existing Git configurations.

__Note:__ Use `~/.gitconfig.local` to store sensitive information
such as the Git user credentials, e.g.:

```gitconfig
[commit]

    # Sign commits using GPG.
    # https://help.github.com/articles/signing-commits-using-gpg/

    gpgSign = true

[user]

    name = Sander Tuin
    email = sander@rootsrentalsoftware.com
    signingKey = XXXXXXXX
```
