#!/bin/bash
cd 
echo "Install all tools in one click ...";
sleep 2;
cat go.txt | xargs -n1 -I a go get -v -u github.com/a 
mkdir tools/
cd
cd tools
cat bb.txt | xargs -n1 -I a sh -c "git clone https://github.com/a"
cat htb.txt | xargs -n1 -I a sh -c "git clone https://github.com/a"
