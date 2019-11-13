rm -rf .git
rm example.md
touch example.md

git init
git add .
git commit -m "initial commit"

# build the first core doc
for i in {1..10}
  do
    if [ "$i" -eq "4" ]; then
      echo "3" >> example.md
    else
      echo "$i" >> example.md
    fi
    git add .
    git commit -m "added number $i"
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