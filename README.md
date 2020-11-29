# 使用 markdown 编写邮件博客

使用 markdown 可以简单的方便的编写内容，然后生成排版良好的的邮件。原理是通过 pandoc 软件将 markdown 转换成 HTML 页面，不过 HTML 需要特别处理以兼容大多数邮件客户端。

邮件能正常渲染的 HTML 页面只能使用 table 布局，并支持有限的 css 样式。

这个仓库提供了两个基本的邮件模板（基本样式居左、支持题图居中布局），使用这个仓库生成 HTML 邮件只需要几步：

- 安装 pandoc
- 编写 Markdown 
- 执行转换命令
- 调整生成的 HTML，打开全选粘贴到邮件中

<img src="README/image-20201129165737226.png" alt="image-20201129165737226" style="zoom:50%;" />

## 安装 pandoc 

pandoc 是一个全能文档转换工具，支持将 markdown 转换为 HTML、PDF、epub、World 等众多文档格式，使用 pandoc 可以方便的支持 Markdown 文档编写。

macOS 可以直接使用 brew 安装。

> brew install pandoc

安装后可以使用 pandoc 命令进行转换，代码仓库中，准备了一个简单的脚本来做这个事情。

## 编写 markdown 

TOC 

## 执行脚本

使用基本模板样式：

> ./buildemail.sh templates/center-align.html README.md

第一个参数为模板文件，第二个参数为 markdown 文件。模板文件放置在 templates 目录下。脚本执行后，可以在 build 中找到 email.html

## 打开文件粘贴到邮件

使用浏览器打开 email.html，全选后，复制粘贴到邮件编辑器中，即可看到所有的目录。

