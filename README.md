# dotfiles

Personal shell configuration, version-controlled and symlinked into place.

## Contents

| Repo path | Symlinked to | Notes |
|---|---|---|
| `fish/config.fish` | `~/.config/fish/config.fish` | fish shell config: starship prompt, Homebrew env, zoxide, git abbreviations |
| `starship/starship.toml` | `~/.config/starship.toml` | starship prompt theme: colors, language/tool symbols, Claude Code statusline |
| `fish/completions/` | `~/.config/fish/completions/` | fish completions (directory symlink — new completions auto-track) |
| `fish/functions/` | `~/.config/fish/functions/` | fish functions (directory symlink — `funcsave` writes here and auto-tracks) |

`fish_variables` is intentionally **not** tracked — it is machine-local state
(fish regenerates it per machine).

## Install fish and set it as your default shell

```fish
brew install fish
# allow fish as a login shell, then make it the default
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish
```

See the [fish install docs](https://fishshell.com/docs/current/#installation).
Alternatively, point your terminal app at `/opt/homebrew/bin/fish` instead of using `chsh`.

## Restore on a new machine

Clone, then symlink each dotfile into place. For fish:

```fish
git clone https://github.com/chriscantu/dotfiles.git ~/repos/dotfiles

# single files
ln -sf ~/repos/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/repos/dotfiles/starship/starship.toml ~/.config/starship.toml

# directories (remove the empty dirs fish auto-creates first)
rmdir ~/.config/fish/completions ~/.config/fish/functions 2>/dev/null
ln -s ~/repos/dotfiles/fish/completions ~/.config/fish/completions
ln -s ~/repos/dotfiles/fish/functions ~/.config/fish/functions
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

