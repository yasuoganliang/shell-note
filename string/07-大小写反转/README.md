#### test reverse_case
```
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ bash reverse_case.sh "Hello"
hELLO
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ bash reverse_case.sh "HelLo"
hELlO
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ bash reverse_case.sh "hello"
HELLO
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ declare -u h=hello
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ bash reverse_case.sh "${h}"
hello
yujinsheng@haha:~/tmp/mine/shell-note/string/07-大小写反转$ echo ${h}
HELLO
```
