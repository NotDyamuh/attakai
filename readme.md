\# Attakai (暖かい)

\*\*A warm, cozy, and minimalist Hyprland configuration.\*\*

`Attakai` means "warm" in Japanese, and that is exactly the vibe this rice aims for. Built for the balance between productivity and aesthetics, it features soft color palettes, rounded corners, and smooth animations that make your desktop feel more than a workspace.

---

\### Previews

| \*\*Workspace Overview\*\* | \*\*Terminal \& NeoFetch\*\* | \*\*App Launcher\*\* |

# Attakai (暖かい)

**A warm, cozy, and minimalist Hyprland configuration.**

`Attakai` means "warm" in Japanese — this rice aims for a comfortable, productive desktop with soft color palettes, subtle animations, and rounded visuals.

---

## Previews

|                         **Workspace Overview**                         |                       **Terminal & NeoFetch**                        |                          **App Launcher**                           |
| :--------------------------------------------------------------------: | :------------------------------------------------------------------: | :-----------------------------------------------------------------: |
| ![Preview 1](https://via.placeholder.com/600x400?text=Desktop+Preview) | ![Preview 2](https://via.placeholder.com/600x400?text=Terminal+Vibe) | ![Preview 3](https://via.placeholder.com/600x400?text=App+Launcher) |

---

## Features

- **Window manager:** Hyprland (Wayland)
- **Bar:** Waybar (minimal & configurable)
- **Launcher:** Rofi (styled)
- **Terminal:** Kitty (warm color schemes)
- **Notifications:** Swaync (configurable)
- **Theme engine:** Manual theme configs and a theme switcher script

---

## Prerequisites

- A Wayland-capable GPU and drivers
- A Linux distribution (Arch Linux recommended)
- A display manager (SDDM, GDM, LightDM) or a way to start a Wayland session

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/notdyamuh/attakai.git
cd attakai
```

2. Make the setup script executable and run it:

```bash
chmod +x setup.sh
./setup.sh
```

The script installs dependencies and copies configs. You will be prompted for your `sudo` password when necessary — stay near the terminal during installation.

3. Finalize:

- Log out of your current session.
- Select the `Hyprland` session from your display manager.
- After logging in, use the theme switcher (default binding: `Super + T`) to select a theme and apply wallpapers/colors.

---

## Keybindings

| Action              |     Binding      |
| :------------------ | :--------------: |
| **Terminal**        | `Super + Return` |
| **Kill window**     |   `Super + Q`    |
| **Launcher**        |   `Super + D`    |
| **Toggle floating** |   `Super + V`    |
| **Theme menu**      |   `Super + T`    |

---

## Contributing

Contributions, suggestions, and improvements are welcome. Open an issue or submit a pull request on the repository.

---

## Credits

Thanks to the Hyprland community and the various dotfiles projects that inspired this configuration.

---
