# HDS-Note
These are the notes I took while studying the HDS program at the University of Manchester.

出现这个问题
remote: Invalid username or token. Password authentication is not supported for Git operations.
致命错误：'https://github.com/PLZcallMeAda/HDS-Note/' 鉴权失败

ssh-keygen -t ed25519 -C "PLZcallMeAda@github.com"
cat ~/.ssh/id_ed25519.pub
将输出的内容复制到Github ->头像 Settings -> SSH and GPG keys -> New SSH key