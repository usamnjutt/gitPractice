#!/bin/bash
echo "🚀 Deploying with Python HTTP Server..."
echo "========================================"

# Copy files to web directory
sudo mkdir -p /var/www/mywebsite
sudo cp index.html /var/www/mywebsite/
sudo cp style.css /var/www/mywebsite/ 2>/dev/null || true
sudo chown -R $USER:$USER /var/www/mywebsite

echo "✅ Files deployed to: /var/www/mywebsite"
echo ""
echo "🌐 To view your website:"
echo "   1. Open terminal and run:"
echo "      cd /var/www/mywebsite && python3 -m http.server 8000"
echo "   2. Open browser to: http://localhost:8000/"
echo ""
echo "📁 Files deployed:"
ls -la /var/www/mywebsite/
