# NOTE: open new window with fastfetch
fastfetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export EDITOR="nvim"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/java"
export PATH="/usr/local/share/npm/bin:$PATH"
export PATH="$PATH:$HOME/.dotnet/tools"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# User configuration


# NOTE: my git aliases
alias gs="git status"
alias gsshort="git status --short"
alias gcm="git commit -m"
alias gpsuo="git push --set-upstream origin"
alias gpsussh="git push --set-upstream"
alias glon="git log --oneline"
alias greflog="git reflog"
alias gaall="git add *"
alias gpush="git push"
alias gpull="git pull"
alias gpullrebori="git pull --rebase origin"
alias grao="git remote add origin"
alias gcheck="git checkout"
alias gcheckb="git checkout -b"
alias gresethr="git reset --hard"
alias gresetsf="git reset --soft"
alias grestoreStg="git restore --staged"

# NOTE: my aliases to change .zshrc
alias open_zsh="nvim ~/.zshrc"
alias source_zsh="source ~/.zshrc"

# NOTE: my aliases to start/finish venv
alias startVenv="source ~/.venv/bin/activate"
alias finishVenv="deactivate"

# NOTE: my eza aliases 
alias ltl="eza --tree --hyperlink --icons=always --level"
alias lta="eza -a --tree --hyperlink --icons=always --level"
alias la="eza -a"

# NOTE: my nvim aliases
alias vim="nvim"
alias vi="nvim"

# NOTE: my dotnet aliases
alias dn='dotnet new'
alias dr='dotnet run'
alias ds='dotnet sln'
alias da='dotnet add'
alias db='dotnet build'

# NOTE: my docker aliases
alias dockUpNN="docker-compose up --no-start"
alias dockDown="docker-compose down"
alias dockStart="docker start"
alias dockStop="docker stop"

# NOTE: my pkill postgres alias
alias spkillPG="sudo pkill -u postgres"

# NOTE: my rm hyprshots alias
alias rmHyprshots="
cd
rm *_hyprshot.png
cd -
"

# NOTE: Connet to wifi
alias wifi="nmcli device wifi connect"

# NOTE: change terminal-emulator
alias changeTerminal="sudo update-alternatives --config x-terminal-emulator"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


