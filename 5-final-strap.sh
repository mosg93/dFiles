#!/bin/bash

rm ~/.config/chadwm/chadwm/config.mk
rm ~/.config/chadwm/chadwm/config.def.h
rm ~/usr/local/Suckless/st/config.mk
rm ~/usr/local/void-packages/etc/default.conf

mv ~/voidFiles/src/default.conf ~/usr/local/void-packages/etc/default.conf
mv ~/voidFiles/src/chad.mk ~/.config/chadwm/chadwm/config.mk
mv ~/voidFiles/src/chad.defh ~/.config/chadwm/chadwm/config.def.h
mv ~/voidFiles/src/st.mk ~/usr/local/Suckless/st/config.mk
