# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
#Original prompt
#PS1='\[\e[0;91m\][\[\e[0;93m\]\u\[\e[0;32m\]@\[\e[0;38;5;97m\]\H \[\e[0;38;5;145m\]\w\[\e[0;91m\]]\[\e[0;38;5;178m\]\$ \[\e[0m\]' 
#PS1='\[\e[0;91m\][\[\e[0;93m\]\u\[\e[0;38;5;111m\]@\[\e[0;38;5;46m\]\H \[\e[0;38;5;220m\]\w\[\e[0;91m\]]\[\e[0;38;5;136m\]\$ \[\e[0m\]' 
# PS1='\[\e[0;38;5;160m\][\[\e[0;38;5;227m\]\u\[\e[0;38;5;75m\]@\[\e[0;53;38;5;112m\]\H \[\e[0;38;5;227m\]\w\[\e[0;38;5;196m\]]\[\e[0;38;5;184m\]$ \[\e[0m\]' 
#Cool prompt
#PS1='\[\e[0;38;5;46m\][\[\e[0;38;5;179m\]\u\[\e[0;38;5;28m\]@\[\e[0;38;5;120m\]\h \[\e[0;38;5;67m\]\w\[\e[0;38;5;118m\]] \[\e[0;38;5;226m\]$ \[\e[0m\]' 
#lAMBDA
#PS1=' \[\e[0;38;5;208m\]λ \[\e[0;38;5;156m\]\w \[\e[0;38;5;226m\]> \[\e[0m\]' 
# PS1='\[\e[0;36m\]\u \[\e[0;93m\]\w \[\e[0;38;5;226m\]> \[\e[0m\]'
 PS1='\[\e[0;36m\][\[\e[0;36m\]\u\[\e[0;36m\]@\[\e[0;36m\]\H\[\e[0;36m\]] \[\e[0;93m\]\w \[\e[0;38;5;226m\]> \[\e[0m\]' 
#Aliases
alias s="startx"
alias ls="exa --icons" 
alias ll="exa -la"
alias rn="ranger"
alias nv="nvim"
alias v="vim"
alias poweroff="sudo poweroff"
alias pdf="zathura"
#. "$HOME/.cargo/env"
# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
