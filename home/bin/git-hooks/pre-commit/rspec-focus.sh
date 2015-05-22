FOCUS_FILES=`git diff-index --cached --name-only HEAD | xargs grep --exclude=spec_helper.rb ':focus => true' | wc -l`
if [ $FOCUS_FILES -gt 0 ]
then
        echo "[pre-commit] You have at least 1 spec file with :focus => true, remove first."
        exit 1
fi
