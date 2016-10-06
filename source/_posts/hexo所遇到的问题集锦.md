layout: post
title: hexo所遇到的问题集锦
comment: true
tags: [hexo]
date: 2016-06-13 14:37:04
updated: 2016-06-13 14:37:04
---
# 前言 #
总算是找到符合我要求的博客搭建工具--hexo！正如[阮一峰](http://www.ruanyifeng.com/home.html "阮一峰博客")：所说的
> 喜欢写Blog的人，会经历三个阶段。
　　第一阶段，刚接触Blog，觉得很新鲜，试着选择一个免费空间来写。
　　第二阶段，发现免费空间限制太多，就自己购买域名和空间，搭建独立博客。
　　第三阶段，觉得独立博客的管理太麻烦，最好在保留控制权的前提下，让别人来管，自己只负责写文章。

我目前大概处于第三阶段了，之前是自己购买域名和空间，用WordPress搭建独立博客。后来渐渐觉得WordPress太臃肿了，主题不怎么喜欢，对markdown支持也不友好。度娘了好一阵子先是发现了jeklly，然后才发现hexo。至于jeklly和hexo哪个好？见仁见智~反正jeklly我是折腾了一天才懂，jeklly基于ruby，不像hexo基于node，hexo跟容易上手点，速度也更快。
以下是我在接触hexo所遇到的一些问题，希望给后学者带来一点帮助

----------

# hexo d报错 #
运行hexo d命令报错的类型会有很多：

- 一般新手你得先检查json文件中是否存在hexo-deployer-git，没有就得运行`npm install hexo-deployer-git --save`


- 要注意`_config.yml`文件中这里设置中的空格，某个设置行下面的属性值前面必须空两个格，冒号后面的必须空一格，设置不对都会报错

```
deploy:
  type: git
  repository: http://github.com/skybluefly/skybluefly.github.io.git
  branch: master
```

- 很教程中`repository: http://github.com/skybluefly/skybluefly.github.io.git`是用这种形式的地址，这种不好的是每次hexo d 都需要输入github的账号和密码，比较麻烦，应该改为下面的形式：`repository: git@github.com:skybluefly/skybluefly.github.io.git`

----------
# NexT 主题相关问题 #
网上用hexo的大伙基本都是用NexT主题，好用自不用说，最主要它用非常详细的主题[API文档](http://theme-next.iissnan.com/ "NexT官网")，不懂代码的菜鸟也很容易上手~

- 阅读数的设置：
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-06-13_160413.jpg)

这个坑蛮大的，主要是主题作者对于这个LeanCloud安装教程的编写时间上，[为NexT主题添加文章阅读量统计功能](https://notes.wanghao.work/2015-10-21-%E4%B8%BANexT%E4%B8%BB%E9%A2%98%E6%B7%BB%E5%8A%A0%E6%96%87%E7%AB%A0%E9%98%85%E8%AF%BB%E9%87%8F%E7%BB%9F%E8%AE%A1%E5%8A%9F%E8%83%BD.html#%E9%85%8D%E7%BD%AELeanCloud)这篇教程是在2015-10-21就已经编写，很多网上的人会转载的这个教程，导致很多人会重新按这个这个教程再折腾一次，很多人会出现这样的问题：
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-06-13_162356.jpg)
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-06-13_162413.jpg)

其实在新版主题中早已包括了这个配置文件

![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-06-13-01.png)

所以如果你现在用了最新NexT主题，这个教程已经不适用，最新版的NexT主题，已经集合了这个功能，你只需要申请LeanCloud账号，再做下面这一步就ok了
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-06-13_161258.jpg)

还有一点要注意的：在设置LeanCloud账号的class时，要勾选无限制，不然阅读数据还是读不出来的
![](http://7xkj6q.com1.z0.glb.clouddn.com/static/images/leancloud-page-anlysis/creating_class.png)
------

