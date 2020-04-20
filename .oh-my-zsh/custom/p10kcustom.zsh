# Used to handle all custom things that might be needed by p10k
alias zsh.p10k="open -a Sublime\ Text ~/.p10k.zsh"
alias zsh.p10k.custom="open -a Sublime\ Text ~/.oh-my-zsh/custom/p10kcustom.zsh"

alias zsh.p10k.update="git -C $ZSH_CUSTOM/themes/powerlevel10k pull"

colorfun() {
	for i in {0..255};
	do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'};
	done
}