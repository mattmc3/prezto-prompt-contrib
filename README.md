# prezto-prompt-contrib

Additional prompts for [Prezto][prezto]

## What's included

- [Lean][lean]
- [Oh-My-Zsh themes][omz-themes]
- [Starship][starship]

## Installation

Clone the repo:

```zsh
git clone --recurse-submodules \
  https://github.com/mattmc3/prezto-prompt-contrib \
  ${ZDOTDIR:-$HOME}/.zprezto-prompt-contrib
```

Add this project to the list of Prezto contrib locations. You also need to
allow module overrides in `.zpreztorc`:

```zsh
# Add additional directories to load prezto modules from
zstyle ':prezto:load' pmodule-dirs ${ZDOTDIR:-$HOME}/.zprezto-prompt-contrib

# Allow module overrides when pmodule-dirs causes module name collisions
zstyle ':prezto:load' pmodule-allow-overrides 'yes'
```

Now, you can have access to new prompts like [starship]:

```zsh
zstyle ':prezto:module:prompt' theme 'starship'
```

## Oh-My-Zsh themes

This project also supports using [Oh-My-Zsh][omz] style themes for your prompt. Oh-My-Zsh
stores its themes in \*.zsh-theme files, however many of these themes have names that
collide with Prezto theme names (ex: sorin, agnoster). Due to this, using zsh-theme
files works a little differently than typical prompts that provide proper prompt
functions like (ie: `prompt_robbyrussell_setup`).

In order to support Oh-My-Zsh themes, you will need to first set the OMZ `$ZSH_THEME`
variable to your preferred OMZ theme. Then, set the Prezto prompt value to 'omz' in
your `.zpreztorc` like this:

```zsh
ZSH_THEME=robbyrussell
zstyle ':prezto:module:prompt' theme 'omz'
```

If you prefer to see all the Oh-My-Zsh themes when you run `prompt -l`, you
can acheive this by creating `prompt_${name}_setup` function files. This project
provides a handy utility to do that for you in the 'bin' directory called
`make_omz_prompts`. We don't do this for you by default because, well, frankly
OMZ has a lot of themes and most of them you probably won't ever want or use.

## 3rd party zsh-themes

There are a lot of 3rd party prompts that use the [Oh-My-Zsh][omz] \*.zsh-theme file
convention rather than the `prompt_${name}_setup` standard. That's okay, you can still
use those themes the same way [OMZ instructs you to][omz-custom-themes].

Simply, set the `$ZSH_CUSTOM` variable to a location of your choosing, and place the
\*.zsh-theme files in that directory. Then, set your theme with the `$ZSH_THEME` variable
and set the Prezto prompt style to 'omz'.

For example, here is how you would use the [dracula theme]:

Per the Dracula theme instructions, first clone the repository, and then symlink the
zsh-theme file to your OMZ custom themes location:

```zsh
git clone https://github.com/dracula/zsh ${ZDOTDIR:-$HOME}/.zplugins/dracula
mkdir -p ${ZDOTDIR:-$HOME}/.zsh_custom/themes
ln -s ${ZDOTDIR:-$HOME}/.zplugins/dracula/dracula.zsh-theme ${ZDOTDIR:-$HOME}/.zsh_custom/themes
```

Then add the following to you `.zpreztorc`:

```zsh
ZSH_CUSTOM=${ZDOTDIR:-$HOME}/.zsh_custom
ZSH_THEME=dracula
zstyle ':prezto:module:prompt' theme 'omz'
```

## Other prompts

The goal of this project is not to include every prompt available for Prezto, but
if there's an active, popular prompt project out there you'd like to see included,
feel free to open an issue or submit a PR.


[dracula]:            https://draculatheme.com/zsh
[lean]:               https://github.com/miekg/lean
[omz]:                https://github.com/ohmyzsh/ohmyzsh
[omz-themes]:         https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
[omz-custom-themes]:  https://github.com/ohmyzsh/ohmyzsh/wiki/Customization#overriding-and-adding-themes
[prezto]:             https://github.com/sorin-ionescu/prezto
[starship]:           https://starship.rs
