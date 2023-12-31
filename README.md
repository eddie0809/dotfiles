# ~/.dotfiles

These are my dotfiles. There are many like it, but these ones are mine.

### current setup
 
- OS: Arch Linux x86\_64 
- Kernel: 6.6.8-arch1-1 
- Packages: 1535 (pacman) 
- Shell: zsh 5.9 
- WM: i3 
- Terminal: kitty 
- Editor: vim
- PDF Viewer: zathura

#### "Installation guide"

This assumes you already installed an OS. If not, follow [this installation
guide](https://wiki.archlinux.org/title/Installation_guide) to install the
latest version of (pure) Arch Linux[^arch] or go to [here](https://endeavouros.com/) 
to download the latest EndeavourOS (EOS) ISO[^endeavour].

[^arch]: Recommended only for more advanced Linux users, as the installation
experience is quite diffferent from the average user experience of other OSs.
However, I still think that one should, once in their life, have had the pure
Arch install experience.

[^endeavour]: I highly recommend it for your first Arch (maybe even Linux)
experience. Has a very user friendly installer and takes care of ugly driver
stuff for you. Drawback: As of the latest release of EOS, you should probably
use the online installer and get xfce4, as the offline installer now ships KDE
plasma, which runs on wayland.


##### downloading the packages
Run these commands (either from arch console or your pre-installed DE)

If any dependencies need to be installed along the way, install them
```sh

# assuming you haven't installed zsh on install via pacstrap (e.g. with EOS
installer)

sudo pacman -Syu zsh

# download oh-my-zsh and move it to a more appropriate location

sh -c "$(curl -fsSL
https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

mv .oh-my-zsh .local/share/oh-my-zsh

# skip the following line if you have a working X11 based DE

sudo pacman -Syu xorg-server xorg-xclock xorg-xinit xorg-xinput

# download and install i3 (with optional picom)

sudo pacman -S i3-wm i3blocks i3status i3bar dmenu picom

# assuming you haven't installed vim on install via pacstrap (e.g. with EOS
installer)

sudo pacman -Syu vim

# (optional) install gcc for clangd-completer

sudo pacman -Syu gcc

sudo pacman -Syu kitty

sudo pacman -Syu zathura zathura-pdf-mupdf

sudo pacman -Syu git

```

###### primer on xdg base directory
Once you have installed the xorg packages, I'd recommend setting some xorg
environment variables. Put the following four lines below `export PATH` in your
`/etc/profile`

```
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
```

for more information check out [this](https://wiki.archlinux.org/title/XDG_Base_Directory)
article in the arch wiki

##### cloning the repo

I recommend that, rather than simply cloning this repo, you fork it and do your
own spin on it. If you did fork it, you just need to replace my username with
yours.

For cloning you use

`git clone --bare git@github.com:eddie0809/dotfiles.git $HOME/.dotfiles`

Then say

`echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/
--work-tree=$HOME'" >> $HOME/.zshrc`

and `exec zsh` (or `.bashrc` (using `source ~/.bashrc`) if you haven't installed
zsh). Configure it to your liking, one recommendation is the following

`dotfiles config --local status.showUntrackedFiles no`

which hides untracked files[^untracked] from status. Now we are (seemingly) 
ready to checkout.

[^untracked]: since `--work-tree` is set to `$HOME`, every file in your home
directory, except for the configs, is going to be untracked. 

`dotfiles checkout`

which probably gives you some conflicts. Worry not, just rename the conflicting
files to `<conflicting file>.old`, since they will be replaced by more sensible
configs.

And with this youre done!

#### Todo

- review tex.snippets (some of them are entirely useless, some of them are
anti-feature-esque)
