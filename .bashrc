#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls -l --color=auto'
alias grep='grep --color=auto'
alias du='du -h | sort -h -r | less'

blu=$(tput setaf 14);
grn=$(tput setaf 10);
red=$(tput setaf 9);
rst=$(tput sgr0);
bld=$(tput bold);

# PS1 config
PS1='\n\[${bld}\]';
PS1+='\[${blu}\u\]';		# username
PS1+='\[${rst}${bld}@\]';		# at symbol
PS1+='\[${blu}\h \]';		# hostname
PS1+='\[${grn}\w';		# working directory
PS1+='\n';
PS1+='\[${red}>> ${rst}\]';	# >> and reset colour

export PS1;
