EDITOR=nvim
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git yarn python npm macos docker docker-compose aliases fig brew macos)
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

source $ZSH/oh-my-zsh.sh
eval $(/opt/homebrew/bin/brew shellenv)
eval "$(rbenv init - zsh)"

# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias v=nvim
alias play="music play"
alias pause="music pause"
alias refresh="source ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.lua"
alias zshconfig="nvim ~/.zshrc"
alias psql="/Applications/Postgres.app/Contents/Versions/15/bin/psql"

# TMUX aliases
alias ta="tmux attach -t"
alias tad="tmux attach -d -t"
alias ts="tmux new-session -s"
alias tl="tmux list-sessions"
alias tksv="tmux kill-server"
alias tkss="tmux kill-session -t"

alias la="lsd -l"
alias l="lsd -la"

alias compile="~/custom_bin/compile"
alias vi="~/custom_bin/vi.sh"

alias py="python3"

# Environment variables
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator:$PATH
export PATH=$PATH:$ANDROID_HOME/tools:$PATH
export PATH=$PATH:$ANDROID_HOME/tools/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/platform-tools:$PATH
export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH=$PATH:/Users/barsboldbayarerdene/.dotnet/tools
export PATH=$PATH:~/.local/bin
export PATH=$PATH:~/go/bin

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@3)"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

eval "$(zoxide init zsh --cmd h)"

export LESSKEY="~/.lesskey"
