# lumie's Dotfiles

![Hyprland](https://img.shields.io/badge/WM-Hyprland-blue?style=flat-square&logo=linux)
![Distro](https://img.shields.io/badge/Distro-Arch_Linux-1793D1?style=flat-square&logo=arch-linux)
![Shell](https://img.shields.io/badge/Shell-Zsh-black?style=flat-square)
![License](https://img.shields.io/badge/License-MIT-green?style=flat-square)

A minimal, keyboard-driven Hyprland setup with a focus on clean aesthetics and fast workflows.

<img width="400" src="https://raw.githubusercontent.com/x0lumie/dotfiles/master/ss1.png"> <img width="400" src="https://raw.githubusercontent.com/x0lumie/dotfiles/master/ss2.png">

---

## Software Stack

| Role | Software |
|---|---|
| Window Manager | [Hyprland](https://hyprland.org/) |
| Status Bar | [QuickShell](https://quickshell.outfoxxed.me/) w/ noctalia cfgs |
| App Launcher | [Fuzzel](https://codeberg.org/dnkl/fuzzel) |
| Screenshot | [HyprShot](https://github.com/Gustash/Hyprshot) |
| Terminal | [Kitty](https://sw.kovidgoyal.net/kitty/) |
| Shell Theme | [Oh My Zsh](https://ohmyz.sh/) |

---

## Prerequisites

Before installing, make sure you have the following:

- **Git** — for cloning the repo
- **A Nerd Font** — recommended: `JetBrainsMono Nerd Font` or `FiraCode Nerd Font` for icons in the bar to render correctly
- An existing **Wayland-compatible GPU driver** setup (required for Hyprland)

---

## Installation

> [!WARNING]
> **Back up your existing configs before running these commands!** This will overwrite configs for any of the programs listed in the stack above.
>
> ```bash
> cp -r ~/.config ~/.config.bak
> ```

---

### Arch Linux

Install dependencies via `yay` (AUR helper):

```bash
yay -Syu hyprland quickshell fuzzel kitty hyprshot noctalia-shell ttf-jetbrains-mono-nerd zsh
```

Don't have `yay`? Install it first:

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
```

---

### Fedora

Enable the COPR repo for Hyprland, then install:

```bash
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland kitty fuzzel zsh
```

> [!NOTE]
> `quickshell`, `hyprshot`, and `noctalia-shell` are not in the official Fedora repos. You'll need to build them from source or check for community packages. See their respective GitHub pages for build instructions.

---

### Debian / Ubuntu

> [!CAUTION]
> Hyprland is **not officially supported** on Debian/Ubuntu due to outdated system packages. You will need to either build it from source or use a community-maintained PPA.

Install via the community Hyprland PPA (Ubuntu 24.04+ recommended):

```bash
sudo add-apt-repository ppa:hyprland-unofficial/hyprland
sudo apt update
sudo apt install hyprland kitty fuzzel zsh
```

Install Oh My Zsh separately:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

> [!NOTE]
> As with Fedora, `quickshell` and `noctalia-shell` will need to be built from source on Debian/Ubuntu. Build instructions can be found [here](https://quickshell.outfoxxed.me/docs/install/).

---

### Cloning the Dotfiles (All Distros)

Once dependencies are installed, clone the repo and copy the configs:

```bash
git clone https://github.com/x0lumie/dotfiles
cd dotfiles
cp -r config/* ~/.config/
```

Then set Zsh as your default shell if it isn't already:

```bash
chsh -s $(which zsh)
```

Log out and back in to apply everything.

---

## Troubleshooting

**Icons not rendering in the status bar?**
Make sure you have a Nerd Font installed and set it as your terminal/bar font.

**Hyprland crashes on launch?**
Check that your GPU drivers support Wayland. Nvidia users should follow the [Hyprland Nvidia guide](https://wiki.hyprland.org/Nvidia/).

**Oh My Zsh theme looks off?**
Run `source ~/.zshrc` or restart your terminal after the first install.

---

## Credits

- [noctalia](https://github.com/noctalia) — QuickShell bar configuration
- [Hyprland](https://hyprland.org/) — The compositor this is all built on
- Inspiration from the [r/unixporn](https://reddit.com/r/unixporn) community

---

*Feel free to open an issue if something isn't working or you have questions!*
