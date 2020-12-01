#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit

# Launch bar
echo "---" | tee -a /tmp/polybar.main.log
polybar main >>/tmp/polybar.main.log 2>&1 & disown

echo "Bar launched..."
