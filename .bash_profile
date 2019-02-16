
# --------------------------------------
# Load bashrc
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi


# --------------------------------------
# Load custom profiles
for profile in $(find ${HOME}/bashful ! -name '.*' -type f -maxdepth 1 | sort)
do
	source ${profile}
done
