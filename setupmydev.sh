
# Mac or Linux
if [ "$(uname)" == "Darwin" ]; then
    BASH_FILE="$HOME/.bash_profile"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    BASH_FILE="$HOME/.bashrc"
else
	echo 'Unknown system: $(uname)'
	exit
fi

echo '' >> $BASH_FILE
echo '# START (git@github.com:xlou/setupmydev.git)' >> $BASH_FILE
echo '' >> $BASH_FILE

# git shortcuts
echo 'alias venv="source venv/bin/activate"' >> $BASH_FILE
echo 'alias gcam="git commit -am"' >> $BASH_FILE
echo 'alias gfo="git fetch origin"' >> $BASH_FILE
echo 'alias gpom="git push origin master"' >> $BASH_FILE

echo '' >> $BASH_FILE
echo '# END (git@github.com:xlou/setupmydev.git)' >> $BASH_FILE
echo '' >> $BASH_FILE

# re-source
source $BASH_FILE
