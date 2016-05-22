---
layout: post
title: Mac 10.9 系统崩溃恢复后 brew 库连接丢失问题
category: 
---

前天手贱点了升级 10.11，然而不知道是不是跨版本还是网络的问题一直不成功，但是就发现系统开始出现卡死，CPU 被 pid 为 0 的`kernel_task`进程疯狂占用，完全无法进行任何其他操作。昨天开始尝试重启折腾了半天也不见好转，实在无奈只能拿回家断网后备份了资料，然后进入 recovery 模式在线恢复安装。头几次依然有网络问题无法进入下载安装流程，直到晚上终于成功开始在线安装，于是扔着去睡觉了。

test
~~~
for item in $(ls /usr/local/Cellar)
do
    brew unlink $item && brew link $item
done
~~~

-EOF-
