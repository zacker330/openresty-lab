Openresty Lab
---
A lab that do many experiments with [Openresty](http://openresty.org/en/)


lua code is at folder `./ansible/app/files`

    ```
    .
    ├── business-lua
    │   ├── blog.lua
    │   └── bloglist.lua
    └── lua-templates
        ├── blog.html
        └── header.html
    ```
nginx.conf live in `./ansible/app/templates`

#### setup dev environment
1. install vagrant and ansible if you haven't
1. run `vagrant up` to get a virtual server
1. run `ansible-playbook ./ansible/playbook.yml  -i ./ansible/inventory  -u vagrant -k`. The password is `vagrant` as same as username.
1. so, open your browser: [http://192.168.8.10/blog/4444](http://192.168.8.10/blog/4444)

#### completed:

* setup development environment with Vagrant & Ansible
* render html using [lua-resty-template](https://github.com/bungle/lua-resty-template)



#### TODO:

* read data from redis
  1. setup redis
  1. write data into redis
  1. read it from lua script
* add [guard](https://github.com/guard/guard) to speed up dev's pipline
* WAF
