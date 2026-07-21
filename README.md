# dotfiles

Personal shell configuration, version-controlled and symlinked into place.

## Contents

| Repo path | Symlinked to | Notes |
|---|---|---|
| `fish/config.fish` | `~/.config/fish/config.fish` | fish shell config: starship prompt, Homebrew env, zoxide, git abbreviations |
| `starship/starship.toml` | `~/.config/starship.toml` | starship prompt theme: colors, language/tool symbols, Claude Code statusline |

`fish_variables` is intentionally **not** tracked — it is machine-local state
(fish regenerates it per machine).

## Restore on a new machine

Clone, then symlink each dotfile into place. For fish:

```fish
git clone https://github.com/chriscantu/dotfiles.git ~/repos/dotfiles
ln -sf ~/repos/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/repos/dotfiles/starship/starship.toml ~/.config/starship.toml
```

Dependencies: [fish](https://fishshell.com), [starship](https://starship.rs),
[zoxide](https://github.com/ajeetdsouza/zoxide), [Homebrew](https://brew.sh).

## Adding a dotfile

Files here are tracked by moving them into the repo and symlinking them back,
so edits in `~/.config` and in the repo are the same file:

```fish
mv ~/.config/foo/bar.conf ~/repos/dotfiles/foo/bar.conf
ln -s ~/repos/dotfiles/foo/bar.conf ~/.config/foo/bar.conf
```

Then add a row to the table above and commit.

