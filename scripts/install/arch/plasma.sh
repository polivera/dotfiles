#!/bin/bash

echo 'Installing plasma desktop'

source ./../.env.sh

sudo pacman -S plasma plasma-desktop
