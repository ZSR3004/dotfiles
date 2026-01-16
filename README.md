# ZSR's Dotfiles

Dotfiles for my Arch configuration. Some of the folders have READMEs with more information.

## Installation and Usage

To install these dofiles, just run 

```bash
git clone https://github.com/ZSR3004/dotfiles.git
```

Now, you can go in and use the files as you'd like. The structure mirrors my home directory. So, `.zshrc` is located
at the `~/` directory (the same one you get to when you run `cd` with no arguments; this is called the home directory).
My Neovim config is located at `~/.config/` and so on so forth. Just place the file into the appropriate directory.

**I HIGHLY RECOMMEND BACKING UP YOUR EXISTING CONFIG FILES**. The easiest way to do this is to just make a copy.
Taking your Neovim config for example, the workflow would look like this.

```bash
cp ~/.config/nvim ~/.config/nvim.bak    # backup your Neovim config
mv ~/dotfiles/.config/nvim ~.config/    # Move my config in there
```

All that said, I suggest you use my dotfiles as inspiration rather than just copying them, but if you'd like to test
them out, make use of them however you'd like!

If you'd like to share your dotfiles or otherwise keep track of them using Git, 
[GNU Stow](https://www.gnu.org/software/stow/) is a great tool (which is what I used for this).
Check out [this video](https://www.youtube.com/watch?v=NoFiYOqnC4o) which introduced me to using GNU Stow to manage
dotfiles.
