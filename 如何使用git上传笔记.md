These are the notes I took while studying the HDS program at the University of Manchester.

## 首次使用
```bash
# 1. 设置用户信息（确保提交记录有你的身份）
git config --global user.name "PLZcallMeAda"
git config --global user.email "plzcallmeada@github.com"

# 2. 初始化仓库（如果你还没初始化）
git init

# 3. 添加远程仓库地址(origin这个名字替代后边的地址)
git remote add origin git@github.com:PLZcallMeAda/HDS-Note.git

# 4. 拉取远程仓库内容（避免推送冲突）
git pull origin main --allow-unrelated-histories

# 5. 添加并提交你的本地文件
git add .
git commit -m "Initial commit"

# 6. 推送到远程 main 分支
git push -u origin main

```
## 推送和拉取
```bash
# 首先克隆下我的整个仓库
git clone https://github.com/PLZcallMeAda/HDS-Note.git

# 拉取仓库
git pull origin main

# 推送到远程 main 分支
git add .
git commit -m "你的评价"
git push -u origin main

```