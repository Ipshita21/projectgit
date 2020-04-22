#!/bin/sh
score=0
rm .prime.txt
/home/user/.sdkman/candidates/gradle/current/bin/gradle -q prime | tee .prime.txt
if [ $? -eq 0 ] ; then 
    if [ -e ".prime.txt" ]; then
        if grep -q "[11, 13, 17, 19, 23, 29]" .prime.txt;
            then
                score=100
            else
                score=0
        fi
    fi
fi

echo "FS_SCORE:$score%"