#!/bin/bash

WATCH_DIR="/var/www/html"  # Change to your desired directory

# Start watching the directory for changes
inotifywait -m -r -e modify,create,delete "$WATCH_DIR" | while read path action file; do
    echo "The file '$file' at '$path' was '$action'"
    
    # Perform the curl command after detecting a change
    echo "Sending curl request to localhost:8080"
    # curl -s http://localhost:8080
    # Trigger BrowserSync to refresh the browser
    browser-sync reload

    # You can add more options to curl if needed, like -X POST or -d "data=example"
done



