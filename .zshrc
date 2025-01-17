# --- Configure ZSH -----------------------------------------------------------
setopt AUTO_CD                  # changes directory when path entered without cd
setopt NO_CASE_GLOB             # case insensitive globbing

fpath+=~/.zfunc

# --- History file ------------------------------------------------------------
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY            # share history between sessions
setopt HIST_EXPIRE_DUPS_FIRST   # expire duplicates first
setopt HIST_IGNORE_DUPS         # ignore duplicates
setopt HIST_FIND_NO_DUPS        # ignore duplicates when searching
setopt HIST_SAVE_NO_DUPS        # Don't write duplicate entries in the history file
setopt HIST_REDUCE_BLANKS       # reduce blank lines
setopt HIST_IGNORE_SPACE        # ignore lines starting with a space
setopt HIST_VERIFY              # verify command before run when use !!

# --- Enviroment variables ----------------------------------------------------
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export VAULT_ADDR='https://vault.fundraiseup.com'
export PATH="/opt/homebrew/opt/openjdk@11/bin:$HOME/.bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

# --- Aliases -----------------------------------------------------------------
alias ls='gls -G --color=auto --group-directories-first'
alias lsa='gls -Ga --color=auto --group-directories-first'
alias ll='gls -Gl --color=auto --group-directories-first'
alias lla='gls -Gla --color=auto --group-directories-first'

alias cp='nocorrect cp'
alias mv='nocorrect mv'
alias sudo='nocorrect sudo'
alias mkdir='nocorrect mkdir'
alias rmrf="rm -rf"
alias awk="gawk"
alias sed="gsed"
alias ya="yazi"

alias cd="z"
alias ..="z .."
alias ...="z ../.."
alias ....="z ../../.."
alias .....="z ../../../.."

alias vi='nvim'
alias vim='nvim'

alias gs="git status"
alias gpl="git pull"
alias gph="git push"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gac="git add . && git commit -m"
alias gz="lazygit"

alias make="gmake"
alias cat="bat --theme=Nord"

alias cdd='dirs -v && read index && let "index=$index+0" && cd ~"$index" && let "index=$index+1" && popd -q +"$index"'
alias addkeys='grep -slR "PRIVATE" ~/.ssh | xargs ssh-add --apple-use-keychain'

alias dotupdate="yadm add -u && yadm commit -m 'Update' && yadm push"
alias dotstatus="yadm status -s"

alias fruvault="vault login -method=oidc"
alias mnfaws="aws sso login --profile snp"

# --- Theme -------------------------------------------------------------------
if [ "${TERM%%[-.]*}" != "xterm" ]; then # this is for terminal in neovim
  if [ -f ~/.config/base16-nord.sh ]; then
    . ~/.config/base16-nord.sh
  fi
fi

# --- Keybindings -------------------------------------------------------------
bindkey $'^[[A' history-substring-search-up    # search in history by up arrow
bindkey $'^[[B' history-substring-search-down  # search in history by down arrow

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# --- FZF ---------------------------------------------------------------------
if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# --- PyEnv ---------------------------------------------------------------------
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# --- FNM -----------------------------------------------------------------------
export PATH="/Users/luvs/Library/Application Support/fnm:$PATH"
eval "$(fnm env --use-on-cd --version-file-strategy=recursive)"
#
# pnpm
export PNPM_HOME="/Users/luvs/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# --- Sheldon -------------------------------------------------------------------
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

. "$HOME/.cargo/env"

# Added by Windsurf
export PATH="/Users/luvs/.codeium/windsurf/bin:$PATH"
