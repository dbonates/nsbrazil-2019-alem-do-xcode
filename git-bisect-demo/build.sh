rm -rf .git
rm example.md
touch example.md

git init
git add .
git commit -m "initial commit"

# build the first core doc
MAX=25
COCOMAN=$((RANDOM%${MAX}))
VERSION_STEP=5

for (( i=1; i<=$MAX; i++ ))
  do
    if [ "$i" -eq "$COCOMAN" ]; then
      echo "BLEBS" >> example.md
    else
      str=""
      for (( c=1; c<=$i; c++ ))
      do
        str+="$i"
      done
      echo $str >> example.md
    fi
    git add .
    git commit -m "repeating number $i"
    if (($i%$VERSION_STEP==0)); then
      commitVersion=$((i/VERSION_STEP))
      git tag "v$commitVersion.0"
    fi
  done
  

#l
#git --no-pager log --pretty=oneline
#cat example.md
#git bisect start
#git bisect bad HEAD
#git bisect good 989e518
#cat example.md
#git bisect bad
#cat example.md
#git bisect good
#git show