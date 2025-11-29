#!/bin/bash

# 安裝依賴
echo "📦 安裝 npm 依賴..."
npm install

# Git 初始化與提交
echo "🔧 設定 Git..."
git add .
git commit -m "feat: 建立 React 專案結構與 Vite 開發環境

- 新增 package.json 與所有必要依賴
- 設定 Vite 建置工具
- 整合 Tailwind CSS
- 建立專案入口檔案與結構
- 加入 .gitignore 與 README.md"

# Push 到遠端
echo "🚀 推送到 Git 遠端..."
git push

echo "✅ 完成！現在可以執行 'npm run dev' 啟動開發伺服器"
