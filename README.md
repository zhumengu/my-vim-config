## 安装

```bash
curl -sS https://raw.githubusercontent.com/zhumengu/my-vim-config/master/installer.sh | sh
```

## 一般设置，使 vim 更易使用

- 合理设置回退键行为,递增搜索,语法折叠, 针对 Windows 平台脚本, 自动保存为GBK 编码.
- 窗口足够宽时显示文件树.

## 按键映射

- \m 集成 mru 插件, 按键是在 buffer 中列出使用过的文件, 回车查看.
- \be 集成 bufferexplore, 在 buffer 中查看所有打开的文件, d 键关闭, 回车打
开.
- 模仿 emacs kill-ring p 键粘贴后 C-n/C-p 向后/向前遍历粘贴.
- 当窗口宽度超过 80 列时打开文件树(NERDTree), 在第 75 列显示竖线, 当文本超过74字符换行.
- \ig 集成了vim-indent-guides, 打开缩减辅助线, 辅助线设置为 1 单个字符宽度.
- \ww vimwiki 个人 wiki 系统, 可以自动生成 HTML, vimwiki 的 wiki 目录为 ~/vimwiki/wiki, 可以设置百度网盘同名目录为此目录, 或者创建百度同步盘的链接到 ~/vimwiki/wiki 这样可以在不同的电脑上随时访问自己的笔记.
- \rt 运行 Autoformat 自动格式化文件
- \q 退出编辑器
- \w 保存文件
- \h 搜索高亮显示开关
- \t 文件树

## 针对编程语言的

- 扩展 % 号在 HTML 标签间跳转
- ultisnips 程序语言的自动完成
- 不使用 Tab 而是使用空格， 使各个平台显示一致
- 统一使用等宽字体 Fira Code
- 保存自动删除行尾空白字符
- 嵌套的括号以彩色承兑显示 vim-rainbow
- airline 显示状态栏
