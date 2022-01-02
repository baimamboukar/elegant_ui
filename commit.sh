for file in *
do
    git add $file
    git commit -m "added $file"
    git push
done