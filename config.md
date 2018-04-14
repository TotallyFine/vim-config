## 配置vim

1. 查看~/目录下有没有一个.vimrc的文件，如果没有在当前目录创建一个
2. 在root目录下的.vimrc对所有用户生效，也可以在每个用户下单独配置个性哈u.vimrc
3. vim的功能实际上是有配置文件和插件共同决定的
4. 插件的下载和安装的位置。在~/.vim文件夹下新建一个doc文件夹和plugin的文件夹,colors文件夹，syntax文件夹。一般指导性的帮助文件会放到doc文件夹中，插件的源码会放到plugin中,语法高亮的文件会放在syntax文件夹下，不同颜色背景的.vim配置文件会放在colors文件夹下。
5. C语言的语法文件放在类似这样的路径下
```path
/usr/share/vim/vim64/syntax/c.vim
```
其他语言的语法文件也可以在这个路径中找到。无论如何都可以在~/.vim/syntax/c.vim中配置自己的C语言语法高亮，如果没有这个文件就可以新建一个。

### 插件
安装Vundle插件管理器
```shell
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
下载Vundle并安装在~/.vim/bundles文件夹中，现在可以通过.vimrc来管理所有扩展

### 布局
使用:sv <filename>打开一个文件这样是纵向分割布局

### 参考
[vim 打造Python开发环境](https://segmentfault.com/a/1190000003962806)
