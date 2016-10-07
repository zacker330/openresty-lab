local template = require("resty.template")

local context = {
    blogid= ngx.var.blogid,
    title = "博客标题",
    author = {name = "fooname", gender = "female", level= 3},
    description = "<script>alert(1);</script>",
    content = " java8的流式处理极大了简化我们对于集合、数组等结构的操作，让我们可以以函数式的思想去操作，<br/>本篇文章将探讨java8的流式数据处理的基本使用。",
    tags = {"life", "lua", "openresty"},
    radar = {lua = 90, openresty = 80, nginx = 70}
}

template.render("blog.html", context)
