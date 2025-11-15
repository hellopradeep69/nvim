### Installation

- Lets get straight to the point **Installation**
- Follow the below mention steps

---

### Before Installation

- make sure to create a backup of your current nvim config

```bash
# required
mv ~/.config/nvim{,.bak}
# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

- or remove your config if you are risky enough

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
```

---

### Steps (Actual installation)

1. Linux / macos [ if you are using mac and trying to use nvim :-)]

```bash
mkdir .config/nvim
git clone https://github.com/hellopradeep69/nvim.git ~/.config/nvim/
```

2. window

- may god have mercy on you ;-)
- just use your boring vs code .

---

### After Installation

- Remove the .git folder, so you can add it to your own repo later

```bash
rm -rf ~/.config/nvim/.git
```

- Remove README.md [ you dont need that ]

```bash
rm -rf ~/.config/nvim/README.md
```

- Start Neovim!

```bash
nvim
```

- and btw you can quit nvim using

```nvim
:q!
```
