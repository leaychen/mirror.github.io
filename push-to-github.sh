#!/bin/bash
# Mirror 项目推送脚本

cd ~/Documents/Projects/mirror-site

echo "检查 GitHub CLI..."
if ! command -v gh &> /dev/null; then
    echo "安装 GitHub CLI..."
    brew install gh
fi

echo "登录 GitHub（会弹出浏览器）..."
gh auth login

echo "推送到远程仓库..."
git push -u origin main

echo "完成！"
echo "仓库地址: https://github.com/leaychen/mirror-site"
