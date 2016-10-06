layout: draft
title: sublime text 插件推荐
comment: true
tags: [sublime, 前端工具,代码编辑器]
date: 2015-10-11 22:40:50
updated: 2015-10-12 15:12:00
---

------
# 下载安装

目前网上也就两种版本：官方版本和修改版，官方试用版和注册版的功能相同，无使用时间限制，只是偶尔在保存的时候弹出注册提示。这里提醒大家，网上大部分破解版都有问题，不是不能联网就是插件安装了不生效，寻觅良久终于找一个能正常安装插件的破解版。[百度云盘地址][1]（已集成下面介绍的所有插件，只有一个不能生效，就是sublimelinter，这个是必须电脑装了node才能跑起来）
下面是官方版本下载地址
[sublime2][2]
[sublime3][3]

----
# 插件安装、相关功能介绍

这里我不做详细的介绍，大家可以直接去慕课网学这个教程：[前端开发工具技巧介绍—Sublime篇][4]，讲得很详细了

---

Sublime之所以强大，是因为有各种各样的插件可以提高了我们的工作效率。希望未熟悉sublime的同学可以把下面几段话看完，别上来就来做拿插件的伸手党，因为很多插件未安装成功就是这些问题导致的。

## 如何搜索插件

下面的每一个插件我都是安装过，并且是可以正常使用的。在百度搜sublime插件推荐什么，会搜出80%相同，而且都是你复制我我复制你，很多插件安装成功后还要做配置的，所以很多人按照那些贴子来装了十几个，最后也没几个能用得了。
[Package control官网][5]
[github网址][6]
先说一下这两个网站的区别，Package control官网里面的插件通过pci搜索就可以安装，但是第二个github网站的一些插件通过pci是搜索不出来，也就是pci无法安装，必须通过 下载插件包安装，所以安装插件最稳妥的方法是：先通过pci搜索安装，pci搜索不到，再去github网站下载安装，在github下载装了还是不行， 那就放弃这个插件吧。github网站的一些插件是可能是个人所写，本身兼容不够好，所以pci才没收录到官网上去。

## 如何安装插件

安装插件有两种方法，第一种是通过命令模式pci联网安装，第二种是通过下载插件包安装。第一种方法上面的视频教程已讲到，下面我说一下第二种方法：
1、去到：https://github.com/ 输入搜索的插件名字
2、在页面右下角点击下载，解压插件包
3、找到sublime的插件文件夹，选择preferences的第一个选项进入：
4、直接把下载的插件包放进sublime的Packages文件夹就算安装完成了
5、查看插件是否已经安装：preferences》packages control》install packages，就会列出已安装的插件。我的第三个插件AndyJS2-master就是通过下载插件包安装所以没有版本信息，前面两个是通过pci安 装就会有详细的版本信息。
6、最后一步当然检测插件是否能用啦~

## 如何设置插件快捷键？

插件多时有些会与其他软件冲突，比如插件Alignment：默认快捷键Ctrl+Alt+A和QQ截屏冲突。
preferences》key bindings-default（sublime本身快捷键）
preferences》key bindings-user（用户自定义快捷键）
比如你Alignment：默认快捷键Ctrl+Alt+A改为”Ctrl+Alt+D”，首先进入default查看自己要设置的快捷键是否跟sublime本身快捷键有冲突，然后进入user输入下面代码，
`[{ “keys”: [“ctrl+alt+d”], “command”: “alignment” }]`
### AdvancedNewFile
简介：通过输入路径来创建文件
使用：快捷键是 Ctrl+ Shift + N。（上面的视频已介绍过）
###  AllAutocomplete
![此处输入图片的描述][7]
简介：Sublime Text 默认的 Autocomplete 功能只考虑当前的文件，而 AllAutocomplete 插件会搜索所有打开的文件来寻找匹配的提示词。就比如在html定义一个<div id=”sidebar”>,在js编辑时它会帮你补全

### AutoFileName
![此处输入图片的描述][8]
简介：自动完成文件名的输入，如图片、css、js文件的选取

### BracktetHighLighter
![此处输入图片的描述][9]
简介：可匹配[], (), {}, “”, ”, <tag></tag>，高亮标记，便于查看起始和结束标记
这个插件花了好长时间来研究，如果对这个没要求可跳过，如果想配置出属于自己的一套高亮显示，可以看我另一篇详细的安装

### Css format
![此处输入图片的描述][10]
简介：css代码折行显示或者一行显示
这插件其实提供了很多格式代码的方式，例如css代码之间可以有空隙，或者没空隙显示，大家自己研究吧
使用这个插件必须通过快捷键来设置的，不然就要通过pic命令模式来使用，可以在自定义快捷键里面加入下面代码，然后按ctrl+alt+[ 或者 ctrl+alt+] 来调用

> {
“keys”: [“ctrl+alt+[“],”command”: “css_format”,
“args”: {
“action”: “expand”
}},
{
“keys”: [“ctrl+alt+]”],
“command”: “css_format”,
“args”: {
“action”: “compact”
}
}

### Doc​Blockr
![此处输入图片的描述][11]
简介：标准的注释，包括函数名、参数、返回值等，并以多行显示，手动写比较麻烦
使用：输入/*、/**然后回车

###Deleblanklines
![此处输入图片的描述][12]
简介：删除代码区域多余的空行，喜欢整齐的码农必备~~快捷键：ctrl+alt+Backspace

### Emmet

简介：Emmet作为zen coding的升级版，对于前端来说，可是必备插件
使用：教程-http://docs.emmet.io/cheat-sheet/
### ExpandRegion

简介：扩大选择范围，其实这个功能共原生快捷键ctrl +shift+space的功能差不多，区别是ExpandRegion选择范围更为精准，我倾向用ExpandRegion多点。

### Go-Css-Declaration
![此处输入图片的描述][13]
简介：由html界面定义过class或者id标签跳转到css定义的位置，默认快捷键是： [“super+alt+.”]

### Html/css/js Prettify

简介：一个插件可以实现Html/css/js代码的格式化，快捷键：ctrl+shift+h ，配合Deltblanklines一起用，就整齐无比了~

### IMESupport
![此处输入图片的描述][14]
简介：还在纠结 Sublime Text 中文输入法不能跟随光标吗？试试「IMESupport 」这个插件吧！目前只支持 Windows，在搜索等界面不能很好的跟随光标。

### Javascript Completion

简介：Javascript语法补全
### jQuery

简介：jQuery 语法补全
### Keymap redefiner

简介：快捷键管理，这个插件比那个KeymapManager功能强大得多，不过必须要用命令模式才能调用，三个功能分别是：define keymap（定义）；remove keymap（删除，无法使用…..）；update keymap（格式化，整理对齐快捷面板的信息）；
### Quick File Move

简介：让文件在文件夹之间移动，并且也有重命名文件名的功能。
### SideBarEnhancements

SideBarEnhancements增强侧边栏的插件，这里将教大家如何用来做sublime text 3浏览器预览插件，并可自定义浏览器预览的快捷键。

安装此插件，点击工具栏的preferences > package setting > side bar > Key Building-User，键入以下代码，这里设置按Ctrl+Shift+C复制文件路径，按F1~F5分别在 firefox，chrome，IE，safari，opera浏览器预览效果，当然你也可以自己定义喜欢的快捷键，最后注意代码中的浏览器路径要以自己 电脑里的文件路径为准。

>   [
{ “keys”: [“ctrl+shift+c”], “command”: “copy_path” },
//firefox
{ “keys”: [“f1”], “command”: “side_bar_files_open_with”,
“args”: {
“paths”: [],
“application”: “C:\\software\\Browser\\Mozilla Firefox\\firefox.exe”,
“extensions”:”.*” //匹配任何文件类型
}
},
//chrome
{ “keys”: [“f2”], “command”: “side_bar_files_open_with”,
“args”: {
“paths”: [],
“application”: “C:\\Users\\Mr.DenGo\\AppData\\Local\\Google\\Chrome\\Application\\chrome.exe”,
“extensions”:”.*”
}
},
//ie
{ “keys”: [“f3”], “command”: “side_bar_files_open_with”,
“args”: {
“paths”: [],
“application”: “C:\\Program Files\\Internet Explorer\\iexplore.exe”,
“extensions”:”.*”
}
},
//safari
{ “keys”: [“f4”], “command”: “side_bar_files_open_with”,
“args”: {
“paths”: [],
“application”: “C:\\software\\Browser\\Safari\\safari.exe”,
“extensions”:”.*”
}
},
//opera
{ “keys”: [“f5”], “command”: “side_bar_files_open_with”,
“args”: {
“paths”: [],
“application”: “C:\\software\\Browser\\opera\\opera.exe”,
“extensions”:”.*”
}
}
]

### SublimeLinter
![此处输入图片的描述][15]
简介：提供代码检测的工具，还要安装SublimeLinter-jshint和node，
上面的视频已经有详细的安装过程，这里就不多说了。

### SublimeTmpl
<img data-src="http://img.blog.csdn.net/20150113205153750?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""></img>
简介：新建文件可选类型的模版插件



  [1]: http://pan.baidu.com/s/1bnrm8Hp
  [2]: http://www.sublimetext.com/2
  [3]: http://www.sublimetext.com/3
  [4]: http://www.imooc.com/learn/40
  [5]: https://packagecontrol.io/
  [6]: https://github.com/
  [7]: http://img.blog.csdn.net/20150113202835390?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [8]: http://img.blog.csdn.net/20150113202034312?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [9]: http://img.blog.csdn.net/20150113203751130?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [10]: http://img.blog.csdn.net/20150113203637809?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [11]: http://img.blog.csdn.net/20150113203913669?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [12]: http://img.blog.csdn.net/20150121082646204?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [13]: http://img.blog.csdn.net/20150113204148515?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [14]: http://img.blog.csdn.net/20150113204448727?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center
  [15]: http://img.blog.csdn.net/20150113205018390?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMjQxMTcwNjE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center

