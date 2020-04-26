# IceCube-VimConf

本项目记载个人的vim配置,涉及的插件都是其他大牛的作品没有进行任何二次开发

# 效果图
![Image text](https://github.com/835311324/IceCube-VimConf/blob/master/image/effect_picture.png)

# Install

## 在线安装
1. 复制项目的.vimrc文件到家目录下

2. 安装vundle插件管理器
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
3. 安装依赖包
```shell
pip3 install ansible-lint # 异步语法检测依赖 非必要，不安装也不会报错
pip3 install pylint      # 异步语法检测依赖 非必要，不安装也不会报错
go get -u github.com/jstemmer/gotags # majutsushi/tagbar go语言依赖 非必要，不安装也不会报错
yum install ctags -y
```
4. 打开本地.vimrc文件
```
:PluginInstall
```
等待安装完成

## 离线安装

可以直接拉去项目，解压vim_icecube.tar.gz

# 包含的插件列表

- 用来提供一个导航目录的侧边栏
  - Plugin 'scrooloose/nerdtree'
- 查看git状态
  - Plugin 'tpope/vim-fugitive'
- 可以快速对齐的插件
  - Plugin 'junegunn/vim-easy-align'
- 自动补全括号的插件，包括小括号，中括号，以及花括号
  - Plugin 'jiangmiao/auto-pairs'
- 文件搜索
  - Plugin 'ctrlpvim/ctrlp.vim'
- 函数搜索
  - Plugin 'tacahiroy/ctrlp-funky'
- Vim状态栏插件，包括显示行号，列号，文件类型，文件名，以及Git状态
  - Plugin 'vim-airline/vim-airline'
- vim增强
  - Plugin 'Lokaltog/vim-powerline'
- 配色方案
  - Plugin 'crusoexia/vim-monokai'
  - Plugin 'acarapetis/vim-colors-github'
  - Plugin 'rakr/vim-one'
  - Plugin 'morhetz/gruvbox'
- 注释用的插件
  - Plugin 'scrooloose/nerdcommenter'
- 可以在 vim 中使用 tab 补全
  - Plugin 'vim-scripts/SuperTab'
- vim go插件
  - Plugin 'fatih/vim-go'
- 代码块补全插件
  - Plugin 'SirVer/ultisnips'
  - Plugin 'honza/vim-snippets'
- tag管理插件
  - Plugin 'majutsushi/tagbar'
