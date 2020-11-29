# 使用 markdown 编写邮件博客

使用 markdown 可以简单的方便的编写内容，然后生成排版良好的的邮件。原理是通过 pandoc 软件将 markdown 转换成 HTML 页面，不过 HTML 需要特别处理以兼容大多数邮件客户端。

邮件能正常渲染的 HTML 页面只能使用 table 布局，并支持有限的 css 样式。
