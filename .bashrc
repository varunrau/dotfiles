[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function
PATH="/usr/bin/python:${PATH}}" 
PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH
PATH=/usr/local/share/python:$PATH
export PATH 


function _update_ps1()
{
   export PS1="$(~/powerline-bash.py $?)"
}

export PROMPT_COMMAND="_update_ps1"

##
# Your previous /Users/varunrau/.bash_profile file was backed up as /Users/varunrau/.bash_profile.macports-saved_2012-08-10_at_00:06:04
##

# MacPorts Installer addition on 2012-08-10_at_00:06:04: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

## Alias some stuff
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

choose () {
	echo "Choose a file to edit: "
	select opt in $(find . -name \*$1\*) quit
	do
	    if [[ $opt = "quit" ]]
	    	then
	    	    break
	    fi
	    v "$opt"
	    break
	    done
}

#hive() {
	#do
	#	if [[ $1 ]]
	#		then
	#		    if [[ $2 ]]
	#		    	then
	#		    	    echo "sshing into hive" + $2
	#		    	    ssh $1@hive$2.cs.berkeley.edu
	#		    fi;
	#	fi;
#}
mvim () {
	open /Users/varunrau/Downloads/MacVim-snapshot-64/MacVim-snapshot-64/mvim
}

# Setting PATH for EPD_free-7.3-2
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
#export PATH

