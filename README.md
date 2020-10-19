Text Expansions for the Fish Shell
==================================

Typing `...` will expand to `../..`, `....` will expand to `../../..` and so on.  This can be useful with any command where you want to reference a parent directory that is more than one back.  i.e. `cd ....` or `mv .../file ..`  The dots will expand as you type to allow directory tab-completion to work.

Typing `!!` will expand to the previous command, similar to Zsh, Bash, and other shells.  For example, if you type `apt update` you will likely see a permisison error.  You can then type `sudo !!` and it will expand to `sudo apt update`.  This can be especially useful if you don't want to retype a long command, or navigate around with the arrow keys.

To install with [fisher](https://github.com/jorgebucaran/fisher "fish package manager") run the following:

```shell
fisher add nickeb96/puffer-fish
```

To install it manually, just copy the file in *cond.d/* to your local conf.d directory.  Also copy the two files in *functions/* to your local fish functions directory.  These directories are in *~/.config/fish* by default, you can create them if they don't already exist.
