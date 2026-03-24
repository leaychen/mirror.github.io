# Mirror

独立数字刊物，关于科技与人的关系。

## 简介

> 读懂人造物，就是读懂造物的人。

Mirror 是一本关于科技与人的独立数字刊物。我们不写参数，不追热点，不评测产品。

我们追问的是：为什么人类会造出这样的东西，这个东西又反过来改变了人。

## 技术栈

纯静态网站，无需构建工具：
- HTML5
- CSS3 (自定义 Design System)
- GitHub Pages 部署

## 本地开发

```bash
cd ~/Documents/Projects/mirror-site
python3 -m http.server 8080
# 打开 http://localhost:8080
```

## 目录结构

```
mirror-site/
├── index.html        # 首页
├── issues.html       # 期刊列表
├── issue-01.html     # 第一期：口袋里的生产资料
└── style.css         # 全局样式
```

## 部署

GitHub Pages 自动部署。

---

*独立出版 · 不定期更新*
