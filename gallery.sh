
DIR=$1
ALT=$2

for f in $DIR; do
	printf "<img src=\"%s\" alt=\"%s\" />\n" "$f" "$ALT"
done
