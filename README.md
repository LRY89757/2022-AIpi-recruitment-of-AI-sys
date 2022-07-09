# 2022-AIpi-recruitment-of-AI-sys
> 欢迎来到AIpi招新AI system部分, 此招新面对具有一定高性能经验、具有C++或者cuda基础的同学，也欢迎对这个感兴趣的小白。

## 写在前面
如果你不知道什么是GitHub，什么是git，建议首先快速了解一下[git](https://www.liaoxuefeng.com/wiki/896043488029600).

## Background
AI除了算法端的训练优化，还有另一个很重要的部分是我们的边缘部署，这个领域更多涉及到算子优化、神经网络量化等硬件调优。涉及高性能计算、AI、量化分析多个领域。
完成本题目前，请你最好电脑上配置ubuntu虚拟机或者具有一块nvidia的显卡或者安装Windows VS2017及以上版本。

## 环境配置要求
电脑配置要求（满足以下任意一条即可）：
* Windows+VS2017(or 2019,2022)
* ubuntu + gcc9(+)
* 新版Mac（搭载arm处理器）

如果你具有一块nvidia显卡，建议完成cuda部分。如果你笔记本为集显intel处理器（AMD也可），建议完成x86部分。如果你的笔记本是最新版mac，请完成arm部分。

* [CMAKE](https://cmake.org/)是一个好用的构建工具，请你安装并学习使用他。
* 

## 题目（卷积层优化）

> 选择AI-sys的同学，不仅需要完成本题，还需要完成普通题目中的神经网络部分。

现如今大多数卷积神经网络（CNN）的主体是由卷积层构成的。 因此，加快卷积层的计算对于整个网络的性能至关重要。我们这里需要你手动实现完成卷积层，并实现相应的优化过程。

### 具体要求&&提交格式

请你fork此仓库，这里有三个文件夹`arm`,`cuda`, `x86`,请你根据自己的电脑配置选用不同的文件夹完成不同题目，当然如果你选择都完成也是OK，但是请你注意不管选用哪些题目必须有较强的优化结果，例如可以是相对之前的200倍以上的加速。最后提交请以`GitHub issue`的形式提交自己的仓库链接，标注自己班级姓名以及联系方式，可以是QQ号或者邮箱。请见[提交样例](https://github.com/LRY89757/2022-AIpi-recruitment-of-AI-sys/issues/1)

* 注意请你使用CMAKE搭建工程。这里仅给出了项目基本框架，具体内容请你完善。
* 请你在对应项目的README下记录你的探索优化过程，这个作为你自己思考的证明，同时写文档有助于思路整理与理解。
* 请你完成两个版本：最简单的实现版、最终优化版，并且给出在给定规模的矩阵下速度优化效果对比。
* 请你自行完成时间计时模块来计算自己卷积花费时间
* 注意规避缓存复用等问题

### 优化tips
请你发挥自己强大的检索能力，优化过程包括但不限于：
* 算法优化 (MEC，IM2COL**等**）
* 访存优化（很多时候好的算法一并优化这部分）
* 指令优化（NEON, AVX, SSE，cuda）





