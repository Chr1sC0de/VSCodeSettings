# Remote SSH and WSL

## Remote SSH

To remote ssh from VSCode we can install the [Remote - SSH](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-ssh) extension. The tool is quite simple to use.

## Remote WSL

To run WSL from VSCode install [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl).

Once installed to make things more readable we can install [oh-my-bash](https://github.com/ohmybash/oh-my-bash). To change the highlighting the easiest method is to use the [LS_Colors Generator](https://geoff.greer.fm/lscolors/) by Geoff Greer.

Once your colors have been decided we set them by changing `LS_COLORS` variable in our .bashrc,

```bash
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=1;32;1:ow=33
```
