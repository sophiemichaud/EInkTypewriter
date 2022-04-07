#!/bin/sh

# sysinfo_page - A script to produce an html file
for f in *.md
do
    fName=$(basename "$f" .md)
    marked -i $f -o $fName.html
    echo $fName.html
done

value=$(cat $fName.html)
cat <<EOF > $fName.html
<html>
<head>
    <title>
        My System Information
    </title>
</head>
<body>
	$value
</body>
</html>
EOF