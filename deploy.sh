#!/bin/bash
# 部署脚本 - 运行前请确保已登录 GitHub CLI: gh auth login

REPO_NAME="itinerary-agent-demo"
REPO_DESC="飞猪行程规划 Agent Demo - 两种交互风格对比"

# 创建 GitHub 仓库
echo "Creating GitHub repository..."
gh repo create $REPO_NAME --public --source=. --remote=origin --push

# 启用 GitHub Pages
echo "Enabling GitHub Pages..."
gh api repos/$(gh api user -q .login)/$REPO_NAME/pages \
  --method POST \
  --input - <<< '{"source":{"branch":"main","path":"/"}}' 2>/dev/null || echo "Pages may already be enabled"

echo ""
echo "✅ 部署完成！"
echo ""
echo "访问地址："
echo "  Grid 版本: https://$(gh api user -q .login).github.io/$REPO_NAME/itinerary-agent-demo-grid.html"
echo "  List 版本: https://$(gh api user -q .login).github.io/$REPO_NAME/itinerary-agent-demo-list.html"
