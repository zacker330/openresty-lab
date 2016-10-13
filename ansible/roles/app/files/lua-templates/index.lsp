{%

layout = "layouts/default.lsp"

local  blogid= ngx.var.blogid
local  title = "博客标题"
local    author = {name = "fooname", gender = "female", level= 3}
local    description = "<script>alert(1);</script>"
local    content = " java8的流式处理极大了简化我们对于集合、数组等结构的操作，让我们可以以函数式的思想去操作，<br/>本篇文章将探讨java8的流式数据处理的基本使用。"
local    tags = {"life", "lua", "openresty"}
local    radar = {lua = 90, openresty = 80, nginx = 70}

local a = ngx.var.a
local b = ngx.var.b

local red = redis:new()
red:set_timeout(1000)
local ok, err = red:connect("127.0.0.1", 6379)
if not ok then
   ngx.say("failed to connect: ", err)
   return
end

local ok, err = red:set("a", a)
if not ok then
   ngx.say("failed to set a: ", err)
   return
end


local ok, err = red:set("b", b)
if not ok then
   ngx.say("failed to set b: ", err)
   return
end

%}
<div>
 a: {{a}}<br/>
 b: {{b}}<br/>
 sum from redis:

 blogId: {{blogid}}<br/>
 作者: {{author.name}} {{author.gender}} level: {{author.level}}<br/>
 description: {{description}} <br/>
 tags:  {% for i = 1, #tags do %}
     {% if i > 1 then %},{% end %}
     {* tags[i] *}
  {% end %}<br/>
</div>
