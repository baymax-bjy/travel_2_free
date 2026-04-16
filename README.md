# 🗾 飞猪行程规划 Agent Demo

一个交互式行程规划 Agent 演示，展示两种不同的选项交互风格。

## 🚀 在线体验

| 版本 | 交互风格 | 预览链接 |
|------|---------|---------|
| **Grid 版** | 2列/3列网格布局 | [点击查看](https://yourname.github.io/itinerary-agent-demo/itinerary-agent-demo-grid.html) |
| **List 版** | 编号卡片列表布局 | [点击查看](https://yourname.github.io/itinerary-agent-demo/itinerary-agent-demo-list.html) |

## 📱 功能特点

- **3轮渐进式行程规划**：从骨架 → 细化 → 最终完整版
- **手绘风格地图**：Canvas 绘制的路线示意图
- **智能预算计算**：根据用户选择动态调整预算
- **飞猪设计规范**：符合 Fliggy Design System 的 UI 风格

## 🔄 交互流程

1. **Round 1**: 确认出发时间、行程类型、关注重点
2. **Round 2**: 调整景点安排、确认预算范围
3. **Round 3**: 最终预算方向确认
4. **Final**: 输出完整行程规划（路线、住宿、美食、交通、预算、贴士）

## 🛠 本地运行

```bash
# 直接打开 HTML 文件
open itinerary-agent-demo-grid.html
open itinerary-agent-demo-list.html

# 或使用本地服务器
python3 -m http.server 8000
# 访问 http://localhost:8000
```

## 📁 文件说明

- `itinerary-agent-demo-grid.html` - 网格布局版本（2列/3列选项卡）
- `itinerary-agent-demo-list.html` - 列表布局版本（编号卡片式选项）
- `itinerary-agent-demo.html` - 默认版本（与 list 版相同）

## 🎨 设计对比

### Grid 版（网格布局）
- 选项以 2列或 3列网格排列
- 紧凑的卡片设计
- 适合选项较少、需要快速浏览的场景

### List 版（列表布局）
- 选项以全宽纵向列表排列
- 每个选项带编号圆圈（1、2、3...）
- 标题 + 描述的清晰层次
- 选中时左侧紫色竖线指示
- 右侧勾选圆圈反馈
- 适合选项较多、需要详细说明的场景

## 📄 License

MIT
