#!/bin/bash

:<<eof
写一个 bash脚本以实现一个需求，去掉输入中的含有B和b的单词
示例:
假设输入如下：
big
nowcoder
Betty
basic
test


你的脚本获取以上输入应当输出：
nowcoder test
eof

# -i 忽略大小写
# -v 排除后面的字符
cat nowcoder.txt | grep -iv "b"

grep -v "B" | grep -v "b"