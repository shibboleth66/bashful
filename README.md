# Bash Terminal Customisation

Load a bunch of customisations on every Bash Shell execution.

## Installation

Place all files in a folder that will not change.

e.g. `${HOME}/Documents/bashful`

## Configuration

Add the following code to your bash profile (this varies depending on the OS)

macOS: `~/.bash_profile`

ubuntu: `~/.bashrc` (or `~/.profile`)

```bash
# --------------------------------------
# Load custom bash profiles
for profile in $(find ${HOME}/Documents/bashful -maxdepth 1 ! -name '.*' -type f | sort)
do
	source ${profile}
done
```

This will load all configuration files.

## Changes and Reloading

Add an new alias to `2_aliases` to reload your bash configuration profile.

```bash
alias reload="source ~/.bashrc"
```
