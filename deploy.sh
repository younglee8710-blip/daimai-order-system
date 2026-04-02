#!/bin/bash

echo "🚀 开始部署代买订单管理系统..."
echo ""

# 检查是否安装了 netlify-cli
if ! command -v netlify &> /dev/null; then
    echo "📦 正在安装 Netlify CLI..."
    npm install -g netlify-cli
fi

echo "✅ Netlify CLI 已安装"
echo ""

echo "🌐 正在部署到 Netlify..."
cd /Users/young/Desktop/deploy
netlify deploy --prod --dir=. --site=daimai-order-system

echo ""
echo "✅ 部署完成！"
echo ""
echo "你的网站地址将是：https://daimai-order-system.netlify.app"
echo ""
echo "请复制上面的网址，然后更新你的篡改猴脚本："
echo "将 APP_URL 改为这个网址"
