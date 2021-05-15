#!/bin/bash
file=$(realpath `which $0`)

case $1 in
e) vim $file #reserved, don't modify
	;;
p) for i in $@; do echo $i; done #打印所有参数
	;;
q) i=0; for j in $@; do if ((i>0)); then echo $j; fi ; ((i++)) ; done #打印指定参数
	;;
s) echo $file
	;;
*) cat $file | sed -n '/^[0-9a-z]\+).*$/'p #reserved, don't modify
	;;
esac

var_key="var.key.helloworld"

#var_key extended
grep key << my_doc
	${var_key}
	key.helloworld
	invalid
my_doc

#var_key not extended
#- means strip leading tab characters
grep key <<- 			"my_doc"
	${var_key}
	key.helloworld
	invalid
my_doc

#single quick extension
grep key <<< "${var_key}
ssdfs
kkk
new.key"
