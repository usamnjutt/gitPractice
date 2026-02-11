#!/bin/bash

echo "================================="
echo "🚀 DEPLOYING YOUR WEBSITE"
echo "================================="

# Where to put the files (your shop shelf)
DEPLOY_PATH="/var/www/mywebsite"

# Show what we're deploying
echo "📁 Files to deploy:"
ls -la index.html style.css 2>/dev/null || echo "No CSS file"

# Copy files to the website folder
echo "📋 Copying files..."
cp index.html $DEPLOY_PATH/
cp style.css $DEPLOY_PATH/ 2>/dev/null || echo "No CSS file to copy"

# Check if copy worked
if [ -f "$DEPLOY_PATH/index.html" ]; then
    echo "✅ SUCCESS! index.html deployed"
    echo "📊 File size: $(du -h $DEPLOY_PATH/index.html | cut -f1)"
else
    echo "❌ FAILED: index.html not copied"
    exit 1
fi

echo ""
echo "================================="
echo "🎉 DEPLOYMENT COMPLETE!"
echo "================================="
echo "🌐 View your website at:"
echo "   http://localhost/mywebsite/"
echo "   http://127.0.0.1/mywebsite/"
echo "================================="
