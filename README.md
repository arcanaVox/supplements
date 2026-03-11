# supplements

Personal customizations layered on top of a stock [omarchy](https://github.com/basecamp/omarchy) installation.

## What's here

| File/Dir | Purpose |
|---|---|
| `master-installation.sh` | Run once after a fresh omarchy install to apply everything |
| `packages.txt` | Extra AUR/pacman packages installed on top of the omarchy base |
| `hypr/` | Hyprland config overrides (input, monitors, look & feel, idle) |
| `waybar/config.jsonc` | Waybar status bar config (12-hour clock, custom layout) |
| `aliases` | Shell aliases sourced from `~/.bashrc` |
| `omarchy-overrides.conf` | Hook file for omarchy override points |
| `screensaver-mckallip.txt` | Custom screensaver text (replaces omarchy default) |
| `mckallip-logo.png` | Custom Plymouth boot logo |
| `install-plymouth-logo.sh` | Replaces stock omarchy Plymouth logo with `mckallip-logo.png` |
| `install-stow.sh` | Installs `stow` via yay |
| `install-dotfiles.sh` | Placeholder for stow-based dotfile management (not yet configured) |
| `send_to_pi.sh` | rsync helper to send files to the local Pi at `192.168.1.162` |

## Fresh install

After running the omarchy installer, clone this repo and run:

```sh
git clone git@github.com:arcanaVox/supplements.git ~/supplements
cd ~/supplements
bash master-installation.sh
```

This will:
1. Install extra packages from `packages.txt`
2. Copy Hyprland and Waybar config overrides into `~/.config/`
3. Apply custom branding (screensaver text)
4. Source custom aliases from `~/.bashrc`
5. Replace the Plymouth boot logo (requires sudo)

## Keeping in sync

The files tracked here are the only ones that differ from stock omarchy. Everything else (`bindings.conf`, `hyprland.conf`, terminal configs, etc.) is left at the omarchy default and will update cleanly with `omarchy-update`.

When making changes to a tracked config, copy it back before committing:

```sh
cp ~/.config/hypr/monitors.conf ~/supplements/hypr/monitors.conf
cp ~/.config/waybar/config.jsonc ~/supplements/waybar/config.jsonc
# etc.
```
