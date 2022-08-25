# setup-new-computer-script

adapted from:

- https://gist.github.com/mrlesmithjr/f3c15fdd53020a71f55c2032b8be2eda
- https://github.com/vendasta/setup-new-computer-script


## Usage

```bash
./setup-new-computer.sh
```

## Post Installation Instructions

### Add SSH key to GitHub

https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

### Set iTerm2 config

- Preferences > Profile > General > Command, select `Custom Shell` from drop-down menu, and set value to `/usr/local/bin/fish`
  - for M1 mac, set it as `/opt/homebrew/bin/fish`
- Preferences > general > profiles > general > working directory > select `Reuse previous session's directory`
- Preferences > Profile > Text > Font > select `MesloLGS Nerd Font Mono`

### Misc MacOS config

- set `tap to single click`
- set `three-finger drag`

### Install fish plugins

```bash
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install jethrokuan/z
fisher install franciscolourenco/done
fisher install jorgebucaran/autopair.fish
```
