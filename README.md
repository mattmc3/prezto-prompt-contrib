# prezto-prompt-contrib

Additional popular prompts for Prezto

## Installation

Clone the repo:

```zsh
git clone --depth 1 --recurse-submodules --shallow-submodules \
  https://github.com/mattmc3/prezto-prompt-contrib \
  ${ZDOTDIR:-$HOME}/.zprezto-prompt-contrib
```

Add the new .zprezto-prompt-contrib project to the list of Prezto contribs and allow
module overrides in `.zpreztorc`:

```zsh
# Add additional directories to load prezto modules from
zstyle ':prezto:load' pmodule-dirs ${ZDOTDIR:-$HOME}/.zprezto-prompt-contrib

# Allow module overrides when pmodule-dirs causes module name collisions
zstyle ':prezto:load' pmodule-allow-overrides 'yes'
```

Change your prompt in `.zpreztorc`:

```zsh
# Set the prompt theme to load.
# Setting it to 'random' loads a random theme.
# Auto set to 'off' on dumb terminals.
zstyle ':prezto:module:prompt' theme 'starship'
```

## Oh-My-Zsh themes

This project supports using Oh-My-Zsh style themes for your prompt. Oh-My-Zsh stores its
themes in *.zsh-theme files, however many of these themes have names that collide with
Prezto theme names (ex: sorin, agnoster). Due to this, using zsh-theme files works a
little differently than typical prompts that provide functions like
`prompt_robbyrussell_setup`.

In order to support Oh-My-Zsh themes, you will need to first set the canonical Oh-My-Zsh
`ZSH_THEME` variable to your preferred OMZ theme. Then, set the Prezto prompt value to
'omz' in your `.zpreztorc` like this:

```zsh
# .zpreztorc
# Set the prompt theme to load.
# To use OMZ themes, first set the ZSH_THEME variable
ZSH_THEME=robbyrussell
zstyle ':prezto:module:prompt' theme 'omz'
```

If you prefer for all the Oh-My-Zsh themes to show up when you run `prompt -l`, you
can acheive this by creating `prompt_${name}_setup` function files. This project
provides a handy utility to do that for you in the 'bin' directory called
`make_omz_prompts`. We don't do this by default because, well, frankly OMZ has a lot of
themes and most of them you probably won't ever want or use.

## Prompts

- [Lean][lean]
- [Oh-My-Zsh][omz]
- [Starship][starship]

[lean]:      https://github.com/miekg/lean
[omz]:       https://github.com/ohmyzsh/ohmyzsh
[starship]:  https://starship.rs
