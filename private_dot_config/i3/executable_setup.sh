#!/bin/bash

if [ "$(hostname)" = "bepnos-desktop" ]; then
  ln -sf ~/.config/i3/desktop-config.conf ~/.config/i3/machine-config
else
  ln -sf ~/.config/i3/laptop-config.conf ~/.config/i3/machine-config
fi

