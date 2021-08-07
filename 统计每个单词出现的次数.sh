#!/bin/bash


:<<eof
写一个 bash脚本以统计一个文本文件 nowcoder.txt 中每个单词出现的个数。

为了简单起见，你可以假设：
nowcoder.txt只包括小写字母和空格。
每个单词只由小写字母组成。
单词间由一个或多个空格字符分隔。

示例:
假设 nowcoder.txt 内容如下：
welcome nowcoder
welcome to nowcoder
nowcoder
你的脚本应当输出（以词频升序排列）：
to 1 
welcome 2 
nowcoder 3
eof

# tr -s ' ' '\n' 将空格换成换行符
# uniq -c 统计每个单词出现的次数，uniq只能作用于排序之后的字符，所以要与sort一起使用
# 第二个sort将统计后的结果再按要求排序
cat nowcoder.txt | tr -s ' ' '\n' | sort | uniq -c | sort | awk '{print $2,$1}'