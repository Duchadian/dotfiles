# Dotfiles

This repo contains my [dotfiles](https://wiki.archlinux.org/title/Dotfiles) and covers a part of my configuration (for now). I chose to use [chezmoi](https://chezmoi.io) as a dotfile manager because I wanted easy templating and encrypted files. Because of this templating, my dotfiles will likely not work for your machine. 

## Usage

The dotfiles can be initialised on a new machine as follows:

```bash
chezmoi init https://github.com/Duchadian/dotfiles.git
chezmoi apply -v
```

However, the encrypted files don't work at this point. An `age` encryption key that is in the `.config/default_recipients` file should be configured in `~/.config/chezmoi/chezmoi.yaml`:

```yaml
encryption: age
age:
  identity: "<key file path>"
  recipientsFile: "<recipients file path>"
```

The configuration can be edited either by running `chezmoi edit <file>` on the actual file, or by using `chezmoi cd` and editing the file in the git repo directly.

New edits can be applied on another machine by running `chezmoi update` and `chezmoi apply -v` in succession. 
