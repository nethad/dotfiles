FOCUS_FILES=`git diff-index --cached --name-only HEAD | xargs grep 'binding.pry' | wc -l`
if [ $FOCUS_FILES -gt 0 ]
then
        echo "[pre-commit] You have at least 1 file with a 'binding.pry' call, please remove first."
        exit 1
fi
