URL=$1
git clone --branch master --depth 1 $URL

#Extract extension
for f in `find $(basename $URL) -type f` ; do
        ext=$(echo $f | sed 's/^.*\.\([^\.]*\)$/\1/')
        if [[ $ext != *"/"* ]]; then
          echo $ext
        fi
done | sort | uniq -c | sort -r
