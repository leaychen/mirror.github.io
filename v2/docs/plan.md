# MIRROR V2 开发计划

*记录未完成的设计和开发任务*

---

## 进行中 / 待办

### 1. 首页 Spine 光谱入口
**位置**: `index.html` - 第三本书（"亲密"）下方  
**需求**: 添加"往期推荐"链接，跳转到 `spectrum.html`  
**优先级**: 中

### 2. 碎片页面拼贴式设计 ✓ 已完成
**文件**: `fragments.html` + `fragments-masonry.css`  
**实现**: Masonry 瀑布流 + 散落拼贴效果
- 4/3/2/1 列响应式布局
- 三种卡片高度（short/medium/tall）
- 随机 ±0.5° 旋转散落效果
- 悬停：旋转归零 + 上浮 + 阴影
- 卡片头部：标签左 + 日期右，同排显示
- 移动端适配完成

**完成时间**: 2026-03-25

### 3. 设计页本期区域右侧插画
**文件**: `design.html`  
**位置**: 本期主推卡片右侧  
**需求**: 添加装饰性插画，增强视觉层次  
**优先级**: 中

### 4. feature.html 内容区宽度优化
**文件**: `feature.html`, `feature.css`  
**问题**: 虽然 shell 是 1120px，但内容区被以下限制压缩：
- `.feature-deck`: max-width: 620px
- `.feature-row-sub`: max-width: 660px (普通) / 720px (主推)
- 加上左右固定的 70px + 90px，实际可用约 940px

**方案**: 移除或加大这些 max-width 限制，让内容真正撑满 1120px  
**优先级**: 低（可稍后处理）

---

## 已完成 ✓

### 设计页面网格优化（2026-03-25）
- 边框粗细层次：外框 1px，内部竖线/横线 0.5px
- 修复移动端卡片间线条显示问题
- 查看更多链接移至标题右侧，样式更轻

### 碎片页面瀑布流（2026-03-25）
- 新建 `fragments-masonry.css` + 重构 `fragments.html`
- 4/3/2/1 列响应式瀑布流布局
- 散落拼贴效果（随机旋转 ±0.5°）
- 移动端字号/间距适配
- 创建 `article-long.css` 作为统一长文章样式
- 删除 `article.css`, `design-article.css`, `article-advanced.css`
- 更新 `README.md` 文档
- Shell 宽度统一为 860px
- 移除正文 720px 限制
- 添加 `.highlight` 类用于可选彩色斜体标题

### 样式调整（2026-03-25）
- 修复所有 `.article-title em` 和 `.col-title em` 的加粗问题
- `article-long.css` 字号调整：
  - 正文: 16px
  - 引导语: 18px (移动端 16px)
  - 引用块: 24px (移动端 20px)，padding 更紧凑

---

## 设计原则备忘

### 标题斜体高亮
- **标准文章**: 普通斜体（黑色/灰色），无额外颜色
- **特殊文章**（封面故事等）: 可用 `#9a7858` 棕色斜体，通过添加 `.highlight` 类启用

```html
<h1 class="article-title">
  标题文字<em class="highlight">突出部分</em>
</h1>
```

### CSS 结构
| 页面类型 | 引用 CSS |
|---------|---------|
| 首页 | `base.css` + `index.css` |
| 长文章（设计/特稿） | `base.css` + `article-long.css` |
| 简单文章（碎片） | `base.css` |

---

*最后更新: 2026-03-25 21:00*
