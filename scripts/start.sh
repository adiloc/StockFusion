#!/bin/bash
# Start Nginx
nginx &
# Start BrowserSync
browser-sync start --proxy "localhost:80" --files "/usr/share/nginx/html/**/*" --port 3000 --ui-port 3001
