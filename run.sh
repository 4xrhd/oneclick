#!/bin/bash
echo "Install all tools in one click ...";
sleep 2;
cat go.txt | xargs -n1 -I a go get -v -u github.com/a 

cat bb.txt | xargs -n1 -I a sh -c "git clone https://github.com/a"
cat htb.txt | xargs -n1 -I a sh -c "git clone https://github.com/a"
