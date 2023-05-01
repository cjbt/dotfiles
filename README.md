# dotfiles

Pre-requesites: Install [Prezto](https://github.com/sorin-ionescu/prezto).

```zsh
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
```

And then run this command:

```zsh
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
	ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
```

You will be asked if you want to replace a bunch of dotfiles,

On an fresh install, `y` to all of them. Otherwise, only `y` on the ones you know you want to replace.
