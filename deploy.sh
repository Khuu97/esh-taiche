#!/bin/bash
# Cập nhật mã mới nhất từ GitHub rồi đưa lên Firebase Hosting
set -e
cd "$(dirname "$0")"
git pull -q
grep -q "supabase-js" public/index.html || { echo "Thiếu thư viện, dừng."; exit 1; }
firebase deploy --only hosting --project esh-taiche
