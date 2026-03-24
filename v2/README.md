# MIRROR V2 项目结构

## 目录说明

```
v2/
├── index.html              # 首页
├── story.html              # 文章页（单篇长文模板）
├── fragments.html          # 碎片列表页（独立更新，不按期刊）
├── archive.html            # 往期期刊列表页
├── design.html             # 设计栏目页
├── style.css               # 旧版样式（保留备份，已拆分至 css/）
│
├── css/                    # 模块化 CSS
│   ├── base.css            # 基础样式（变量、导航、页脚、通用文章布局）
│   ├── index.css           # 首页专属（spine、cover、columns）
│   ├── article.css         # 文章页专属（正文排版）
│   ├── fragments.css       # 碎片页专属
│   ├── archive.css         # 往期页专属
│   └── issue.css           # 专题页专属
│
├── issues/                 # 期刊整页（按期刊归档）
│   ├── issue-01.html       # 第一期"亲密"概览页
│   └── issue-02.html       # 第二期（预留）
│
├── issue-01/               # 第一期文章内容（按栏目分类）
│   ├── people/
│   │   └── mirror-self.html
│   ├── refraction/
│   │   └── algorithm-choice.html
│   ├── design/
│   │   └── chatbox-corner.html
│   └── fragments/
│       ├── 01-navigation.html
│       ├── 02-ai-understand.html
│       └── 03-voice-input.html
│
└── issue-02/               # 第二期（预留）
    └── ...
```

## 路径规则

### CSS 引用
- 根目录页面：`./css/xxx.css`
- issues/ 目录内：`../css/xxx.css`

### 链接规则
- 首页 → 期刊页：`./issues/issue-01.html`
- 期刊页 → 首页：`../index.html`
- 期刊页 → 文章：`../issue-01/people/xxx.html`
- 文章 → 期刊页：`../issues/issue-01.html`（视文件位置而定）

## 更新策略

### 碎片（Fragments）
- 不绑定特定期刊
- 独立更新，最新内容放最前
- Fragment 编号按发布顺序递增

### 期刊（Issues）
- 每季度发布一期
- 有明确的主题和选文
- 期刊概览页放在 `issues/issue-XX.html`
- 文章放在 `issue-XX/栏目/文章.html`

## 栏目英文名

| 中文 | 英文 | 说明 |
|-----|------|------|
| 镜中人 | people | 封面故事/人物特写 |
| 折射 | refraction | 深度报道/Feature |
| 设计 | design | 设计观察/批判 |
| 碎片 | fragments | 短篇观察（不按期刊更新） |
