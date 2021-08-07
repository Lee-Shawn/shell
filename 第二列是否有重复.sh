#!/bin/bash


:<<eof
给定一个 nowcoder.txt文件，其中有3列信息，如下实例，编写一个shell脚本来检查文件第二列是否有重复，且有几个重复，并提取出重复的行的第二列信息：
实例：
20201001 python 99
20201002 go 80
20201002 c++ 88
20201003 php 77
20201001 go 88
20201005 shell 89
20201006 java 70
20201008 c 100
20201007 java 88
20201006 go 97

结果：
2 java
3 go
eof

# cat nowcoder.txt | awk '{print $2}' 过滤出第二列
# sort | uniq -c 统计每行出现的次数
# sort 按递增次序排列
# awk '{if ($1 > 1) print $1,$2}' 打印出次数大于1的行
cat nowcoder.txt | awk '{print $2}' | sort | uniq -c | sort | awk '{if ($1 > 1) print $1,$2}'