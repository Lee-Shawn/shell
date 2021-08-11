#!/bin/bash


:<<eof
写一个 bash脚本以统计一个文本文件 nowcoder.txt中每一行出现的1,2,3,4,5数字个数并且要计算一下整个文档中一共出现了几个1,2,3,4,5数字数字总数。



示例:
假设 nowcoder.txt 内容如下：
a12b8
10ccc
2521abc
9asf
你的脚本应当输出：
line1 number: 2
line2 number: 1
line3 number: 4
line4 number: 0
sum is 7
eof

# 行号
cow=1
# 数字个数
sum=0

# 循环读取文件中的每一行
while read line
do
    # -o 只显示行中被模式匹配到的字符串
    # -E 开启扩展正则表达式
    count=`echo ${line} | grep -oE "[12345]" | wc -l`
    echo "line${cow} number: ${count}"
    ((cow++))
    ((sum+=count))
done
echo "sum is ${sum}" < nowcoder.txt