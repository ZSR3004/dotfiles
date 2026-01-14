# ZSR's Neovim Config

This is my Neovim configuration. I've spent a lot of time playing around with different keybind and plugin setups, and I've settled on something that I'm
happy with. I only uploaded this to Github because Git makes it easy to experiment with configurations and Github lets me port my configuration between 
my Linux-Windows dualboot.

For reference, this was made primarily for a Hyprland desktop environment in a Ghostty terminal, so a lot of the keybinds are optimized for that. I can't 
promise that there won't be any breaking changes, but I can promise that every commit pushed will work (aside from the occasional bug). Feel free to 
clone this repo and use it as your own config and change whatever you want about it!

There are a number of package managers you can use. Traditionally, it seems that [Packer](https://github.com/wbthomason/packer.nvim) was used, but I've opted for
the more friendly [Lazy Neovim plugin manager](https://github.com/folke/lazy.nvim).

**Note:** The Lazy Neovim plugin manager (also called lazy.nvim) is **NOT** the same as [LazyVim](https://www.lazyvim.org), which is an opinionated 
Neovim setup.

With all that said, if you're new to Neovim, you might want to checkout a few more beginner friendly setups like 
[kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) or [LazyVim](https://www.lazyvim.org). I definitely recommend the former because it's a little
more barebones which will help you learn how to create a config.

## Installation

First, you have to download Neovim. Check out [the Neovim Website](https://neovim.io/doc2/install/) for more detailed instructions. 
We'll also be using the [Lazy Neovim plugin manager](https://github.com/folke/lazy.nvim), so make sure you have all of those dependencies too.

Now, just clone this repo and put it in place of your existing config.

```bash
cd ~/.config
mv nvim nvim.bak    # Moved your existing config into a backup file. You can delete this if you don't want it.
git clone https://github.com/ZSR3004/nvim
```

And that's it!
