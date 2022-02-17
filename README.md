# prezto-prompt-contrib

Additional popular prompt themes for Prezto

## Installation

Clone the repo:

```zsh
git clone --depth 1 --recurse-submodules --shallow-submodules https://github.com/mattmc3/prezto-prompt-contrib ${ZDOTDIR:-$HOME}/.zprezto-prompt-contrib
```

Add the new .zprezto-prompt-contrib project to the list of Prezto contribs and allow
module overrides in `.zpreztorc`:

```zsh
# .zpreztorc

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

## Prompts

- [Lean]
- [Starship]

[lean]:      https://github.com/miekg/lean
[starship]:  https://starship.rs
