#!/bin/bash

# Count the number of connected outputs.
num_monitors=$(xrandr | grep " connected" | wc -l)

# If more than one monitor is connected, then set the configurations for multi-monitor setup.
if [ "$num_monitors" -gt 1 ]; then
    # Your xrandr command for multi-monitor setup
    xrandr --output DP-4 --mode 1920x1080 --rate 144
    # Add any additional xrandr commands or configurations for your multi-monitor setup.
fi

# No need for an else statement for a single monitor since it will use default settings.

