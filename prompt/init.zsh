ZPREZTODIR=${ZPREZTODIR:-${ZDOTDIR:-$HOME}/.zprezto}
if [[ ! -d $ZPREZTODIR/modules/prompt ]]; then
  >&2 echo "Prezto module not found 'prompt'."
  return 1
fi

# use the prezto built-in prompts as well
fpath=($ZPREZTODIR/modules/prompt/functions $fpath)
function {
  setopt LOCAL_OPTIONS EXTENDED_GLOB
  local pfunction
  local pfunction_glob='^([_.]*|prompt_*_setup|README*|*~)(-.N:t)'
  for pfunction in $ZPREZTODIR/modules/prompt/functions/**/$~pfunction_glob; do
    autoload -Uz "$pfunction"
  done
}

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

# Load the prompt theme.
zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
if [[ "$TERM" == (dumb|linux|*bsd*) ]] || (( $#prompt_argv < 1 )); then
  prompt 'off'
elif [[ "$prompt_argv[1]" == 'powerlevel9k' ]] ; then
  <<EOW
WARNING: Prezto does not support 'powerlevel9k' anymore as it has
         been deprecated and is not supported by its author.
         Consider migrating to 'powerlevel10k' instead by setting:
         zstyle ':prezto:module:prompt' theme 'powerlevel10k'
         in ${${ZDOTDIR:-$HOME}/#$HOME/~}/.zpreztorc.
         Switching to prezto default prompt 'sorin'..."
EOW
  prompt 'sorin'
else
  prompt "$prompt_argv[@]"
fi
unset prompt_argv
