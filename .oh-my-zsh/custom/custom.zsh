# You can put files here to add functionality separated per file, which
# will be ignored by git.
# Files on the custom/ directory will be automatically loaded by the init
# script, in alphabetical order.

# For example: add yourself some shortcuts to projects you often work on.
#
# brainstormr=~/Projects/development/planetargon/brainstormr
# cd $brainstormr
#

alias mac.showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias mac.hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"

alias zsh.edit="open -a Sublime\ Text ~/.zshrc"
alias zsh.custom="open -a Sublime\ Text ~/.oh-my-zsh/custom/custom.zsh"

# Update some plugins/themes
alias zsh.autosuggest.update="git -C $ZSH_CUSTOM/plugins/zsh-autosuggestions pull"
alias zsh.syntaxhighlighting.update="git -C $ZSH_CUSTOM/plugins/zsh-syntax-highlighting pull"
alias zsh.p10k.update="git -C $ZSH_CUSTOM/themes/powerlevel10k pull"

alias trash="trash -F"

alias pyserver="python3 -m http.server 8000"
alias jp="jupyter notebook"

hci=/Users/davidfrankel/Documents/School/Sophomore\ Year/Second\ Semester/CSE\ 256A/Repo/cse256a-s20-david.frankel
school=/Users/davidfrankel/Documents/School/Sophomore\ Year/Second\ Semester

# Dotfile management
# https://www.atlassian.com/git/tutorials/dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# p10k
alias zsh.p10k="open -a Sublime\ Text ~/.p10k.zsh"
alias zsh.p10k.custom="open -a Sublime\ Text ~/.oh-my-zsh/custom/p10kcustom.zsh"

colorfun() {
	for i in {0..255};
	do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'};
	done
}


# Expand aliased
# https://github.com/rothgar/mastering-zsh/blob/master/docs/helpers/aliases.md#automatically-expand-aliases
# !Will need to fix to correct z issue!
# globalias() {
#    zle _expand_alias
#    zle expand-word
#    zle self-insert
# }
# zle -N globalias

# # space expands all aliases, including global
# bindkey -M emacs " " globalias
# bindkey -M viins " " globalias

# # control-space to make a normal space
# bindkey -M emacs "^ " magic-space
# bindkey -M viins "^ " magic-space

# # normal space during searches
# bindkey -M isearch " " magic-space