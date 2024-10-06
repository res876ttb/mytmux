# mytmux

Just a simple tmux config setting.

## Installation

Via curl:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/res876ttb/mytmux/master/install.sh)"
```

Via wget:

```shell
sh -c "$(wget https://raw.githubusercontent.com/res876ttb/mytmux/master/install.sh -O -)"
```

**NOTE**: The provided one-line installation command will install mytmux to `~/.mytmux`. DO NOT remove this directory because the files `~/.tmux.conf` is just a symbolic link.

## Shortcut
| Shortcut | Description |
| --- | --- |
| Ctrl + b | Prefix |
| Meta + t | New tab |
| Meta + a/s | Switch to left/right tab |
| Meta + shift + a/s  | Move tab left/right |
| Meta + \\ | Create a horizontal pane |
| Meta + -  | Create a vertical pane |
| Meta + w  | Close current tab |
| Meta + ,/.  | Adjust pane width |
| Meta +  \</\> | Adjust pane height |
| Meta + \[/\]  | Switch to left/right pane |
| Meta + {/}  | Switch to upper/lower pane |
| Meta + 1-9  | Switch to corresponding tab |
