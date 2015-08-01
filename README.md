# docker-kityminder

docker化kityminder

## Kity Minder

#### 简介

KityMinder 是百度 FEX 团队的 f-cube 小组（原 UEditor 小组）的又一力作。作为一款在线的脑图编辑工具，它有着不亚于 native 脑图工具的交互体验。同时，它充分发挥了 Web 云存储的优势，可以直接将编辑中的脑图同步到云端。此外，借由独创的 “云盘分享”功能，用户可以一键将当前编辑的脑图直接生成在线链接共享给其他用户，实现无缝沟通。

KityMinder 基于 SVG 技术实现，支持绝大多数的主流浏览器，包括：

1. Chrome
2. Firefox
3. Safari
4. Internet Explorer 10 或以上

#### 线上版本

产品地址：[http://naotu.baidu.com](http://naotu.baidu.com)

###### 依赖

百度脑图依赖列表如下。

* `lib/bower/codemirror` - 备注窗口使用的代码编辑器
* `lib/fio` - 前端 IO 操作中间件
* `lib/fui` - 基础 UI 组件库
* `lib/kity` - 前端 SVG 库
* `lib/marked` - Markdown 渲染支持

```bash
git clone https://github.com/fex-team/kityminder.git
```

###### 安装

要在本地运行百度脑图，需要先安装一下开发工具：[git](http://git-scm.com)、[node](http://nodejs.org/)、[bower](http://bower.io/)

建议 `fork` 本仓库后进行二次开发。`fork` 操作完成后，会在您的 github 账户下创建一个 kityminder 的副本。接下来可以克隆到本地。

```bash
cd {YOUR_WORKING_DIRECTORY}
git clone https://github.com/{YOUR_GITHUB_USERNAME}/kityminder.git
```

代码克隆完成，需要初始化子模块。

```bash
git submodule init
git submodule update
```

然后安装项目的依赖项。

```bash
npm install
bower install
```

###### 构建

依赖安装完成，使用 `grunt` 进行构建：

```bash
grunt
```

运行完成后，会发现生成了 `dist` 目录，里面就是可运行的 kityminder。

## Docker Kityminder

我们希望能快速部署一个kityminder的预览页面，所以我们采用`dist`目录下的文件直接进行构建。

#### 镜像特点

- 2015/8/1 继承基础镜像docker-apache

#### 使用方法

- 获取代码并构建

        git clone https://github.com/Dockerlover/docker-kityminder.git
        cd docker-kityminder
        docker build -t docker-kityminder .

- 运行容器

        docker -it -d --name kityminder -p 8004:80 docker-kityminder
