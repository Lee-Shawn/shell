#!/bin/bash


:<<eof
写一个 bash脚本来转置文本文件nowcoder.txt中的文件内容。

为了简单起见，你可以假设：
你可以假设每行列数相同，并且每个字段由空格分隔

示例:
假设 nowcoder.txt 内容如下：
job salary
c++ 13
java 14
php 12

你的脚本应当输出（以词频升序排列）：
job c++ java php
salary 13 14 12
eof


# 先取出文件中的每一列存入数组中，再遍历数组
awk '{
    for (i = 1; i <= NF; i++) {
        if (NR == 1) {
            row[i] = $i
        } else {
            row[i] = row[i]" "$i
        }
    }
} END {
    for (col in row) {
        print row[col]
    }
}' nowcoder.txt