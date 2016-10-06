layout: post
title: 前端EMD邮件遇到的坑
comment: true
tags: [前端,兼容问题,EMD]
date: 2016-07-27 20:28:57
updated: 2016-07-27 20:28:57
---
我个人觉得邮件EMD的重构的兼容性是跟ie系列有得一拼，我曾见看到有人接了个邮件的私单，要求他要测试十几二十的类型的邮箱，并且要每个都要兼容，他说快把他搞疯了。

----------
# 如何测试邮件 #
以QQ邮箱为例：
用QQ邮箱的写信，然后点击格式，出现一个富文本框，选择最后一个，框内就会出现一些代码，然后将代码复制粘贴上去，最后点击返回可视化编辑就能看到效果了。
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-1.png)
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-2.png)
一般来说，公司通常就拿qq和163来测试，因为国内用这两种邮箱的比较多。这两种邮箱内置渲染都比较新，有些还支持一些css3的属性，代码写完贴到邮件测试就会有什么大问题了。

----------
# 火狐邮箱的兼容问题 #

然而我公司都是在用火狐邮箱，我平时还是要考虑这个邮箱的兼容，第一次做的时候，贴到火狐邮件看到这效果，立马就崩溃了，在qq和163都是好好的，怎么到了火狐特么就成这样：
![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-5.png)

![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-4.png)

上面可以看到火狐邮件全部是错位，再来看看火狐邮箱里面的代码，这些代码刚好时出现在td里面设置table便签自动生成了一大堆的&nbsp;的标签，也就是空格标签，

![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-6.png)

![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-7.png)

![](http://o8oseymkx.bkt.clouddn.com/images/hexo-issue/2016-07-28-8.png)

很容易会联想到会不会就是这些空格导致呢，然后我把代码缩成这么一大坨，凡是tr标签里面的便签的空格全部去掉，再贴上，然后一切完好。至于为何会这样？俺也不晓得哟。。。。

----------

# 前端邮箱规范 #
其实度娘一下，可以搜到很多邮件相关的规范，至于这些规范正不正确是很难去验证，因为邮件系统比浏览器还要多。。。下面是我搜集的一些规范：
1.所有图片要设置border=0;valign="top",alt要设置文字，而且不用background 显示图片
2、所有颜色值要设置6位，不要设置简写
3、margin属性也最好不用
4、padding值要四个值都写，padding-left，padding-top有些会出现问题
5、火狐邮箱文字align=“center”无法居中，要设置text-align:center;
6、`<p>`的行间距在不同的邮箱显示会不一样会增大，可用`<span>`代替
7、不要使用float属性，不然你会死的很难看，到时候页面要重新排版


