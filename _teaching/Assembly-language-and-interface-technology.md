---
title: "汇编语言与接口技术"
collection: teaching
type: "本科生课程"
permalink: /teaching/Assembly-language-and-interface-technology
venue: "河南大学计算机与信息工程学院"
date: 2023-09-01
location: "中国开封"
---

2021 年入职河南大学以来，一直从事《汇编语言与接口技术》的本科教学工作。

# 基本情况

《汇编语言与接口技术》是一门计算机专业学生的专业基础课，通常平时成绩与期末考试成绩占比为30%和70%。以下是历年讲授该课程的一些基本情况。

| 时间      | 学生学院       | 班级            | 人数  | 及格率<sup>*</sup>                     | 备注          |
|:------- |:---------- |:------------- |:--- | ----------------------- |:----------- |
| 2021 年秋 | 国际教育学院     | 20级中美计科       | 112 | 卷面及格率53.64%，综合及格率85.45% |             |
| 2022 年秋 | 国际教育学院     | 21级中美计科6.7.8班 | 128 | 卷面及格率87.20%，综合及格率99.20% | 期末:平时=50:50 |
|         | 计算机与信息工程学院 | 21-1 计科       | 123 | 卷面及格率89.92%，综合及格率96.64% | 期末:平时=50:50 |
| 2023 年秋 | 计算机与信息工程学院 | 22-2-1 信安     | 53  | 卷面及格率43.40%，综合及格率69.81%，补考通过率3/13 | 12-17周      |
|         | 计算机与信息工程学院 | 22-2-2 信安     | 36  | 卷面及格率52.78%，综合及格率77.78%，补考通过率1/1 |             |

***卷面及格率**表示期末考试试卷60分及以上的学生人数占总学生人数的比值；**综合及格率**表示综合期末考试和平时成绩60分及以上的学生人数占总学生人数的比值，即通过课程考核的人数占比，这部分学生无需补考或重修；**补考通过率**未考虑弃考学生。

# 课件

以下为 2023 年秋季学期课件

第〇章：[课程简介与教学要求](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 0 章 课程简介与教学要求.pdf)

第一章：[微型计算机概述](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 1 章 微型计算机概述.pdf)

第二章：[80x86 微处理器](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 2 章 80x86 微处理器.pdf)

第三章：[80x86 指令系统和寻址方式](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 3 章 80x86 指令系统和寻址方式.pdf)

第四章：[80x86 汇编语言程序设计](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 4 章 80x86 汇编语言程序设计.pdf)

第六章：[输入输出接口及数据传输控制方式](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 6 章 输入输出接口及数据传输控制方式.pdf)

第七章：[串并行接口技术](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 7 章 串并行接口技术.pdf)

第八章：[中断与中断控制器](http://GaofengShu.github.io/files/PPT-Assembly-language-and-interface-technology/第 8 章 中断与中断控制器.pdf)

# 学习资料
## 指令集
- [8086 指令集](http://GaofengShu.github.io/files/References-ALIT/8086_instruction_set.pdf)


## 参考书籍
入门：
- 周明德主编, 微机原理与接口技术（第2版）, 人民邮电出版社, 2007.
- 王爽编著, 《汇编语言》（第3版）, 清华大学出版社, 2013.


进阶：
- Randall Hyde. "[The Art of Assembly Language Programming](https://shrek.unideb.hu/~gjhalasz/assembly/masm/toc.html)." 1996. (Copyright 1996 by Randall Hyde All rights reserved.)
- [美]Randall Hyde. 包战, 马跃 译. [汇编语言的编程艺术](https://book.douban.com/subject/7059709/)[M]. 北京: 清华大学出版社, 2011. ISBN:9787302263739.

## 接口芯片文档
- [8251A 文档](http://GaofengShu.github.io/files/References-ALIT/8251A-datasheet.pdf)
- [8255A 文档](http://GaofengShu.github.io/files/References-ALIT/8255A-datasheet.pdf)

# 常见问题
## 理论知识
<font color='red'>1. 为什么 −1 是 0FFH？</font>

答：两种思路。① −1 的二进制原码为 10000001B，其补码为 11111111B = 0FFH。② $-1 = 0-1$，即 00000000B − 00000001B = 11111111B = 0FFH。

<font color='red'>2. 关于负数最小值。8 位原码最小值应为 11111111B，补码不应该是 10000001B？怎么是 80H 呢？</font>

答：8 位二进制补码当中，还有比 10000001B 还小的数，即 10000001B − 1 = 10000000B = 80H。实际上，4 位有符号二进制数能够表示的数据范围是 −8~7，8 位有符号二进制数的数据范围是 −128~127。负的最小值的绝对值比正的最大值绝对值多 1。




## 实验实践
<font color='red'>1. 无法使用 debug，出现 `illegal command debug` 错误。</font>

答：请确保 masm 文件夹放在根目录 (如 D:) 下，且保证第一条加载语句正确。如下图所示。
<img src='/images/ALIT/mount-debug.jpg'>

<font color='red'>2. ml *.asm出现 `This program cannot be run in DOS mode.` </font>
<img src='/images/ALIT/connot-be-rum-in-dos-mode.jpg'>

答：提示，很有可能是 ml.exe 和 ml.err 两个文件版本不一致，替换成可用的文件即可。

