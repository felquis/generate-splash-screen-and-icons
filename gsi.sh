#!/bin/bash
# Generate Cordova icon and splash screens
# Thanks for http://tlvince.com

devices=android,ios
eval mkdir -p "./res/{icon,screen}/{$devices}"

# Show the user some progress by outputing all commands being run.
set -x

splash_base="./gsi-base-splash.png"
icon_base="./gsi-base-icon.png"
background="#FFFFFF"

# Splash iOS and Android
convert="convert $splash_base -background $background -gravity center"

$convert -resize 272x272 -extent 320x480 "./res/screen/ios/Default~iphone.png"
$convert -resize 548x548 -extent 640x960 "./res/screen/ios/Default@2x~iphone.png"
$convert -resize 666x666 -extent 768x1024 "./res/screen/ios/Default-Portrait~ipad.png"
$convert -resize 666x666 -extent 1024x768 "./res/screen/ios/Default-Landscape~ipad.png"
$convert -resize 1334x1334 -extent 1536x2048 "./res/screen/ios/Default-Portrait@2x~ipad.png"
$convert -resize 1334x1334 -extent 2048x1536 "./res/screen/ios/Default-Landscape@2x~ipad.png"
$convert -resize 548x548 -extent 640x1136 "./res/screen/ios/Default-568h@2x~iphone.png"

$convert -resize 781x781 -extent 1280x720 "./res/screen/android/drawable-land-xhdpi.png"
$convert -resize 611x611 -extent 720x1280 "./res/screen/android/drawable-port-xhdpi.png"
$convert -resize 272x272 -extent 320x480 "./res/screen/android/drawable-port-mdpi.png"
$convert -resize 342x342 -extent 480x320 "./res/screen/android/drawable-land-mdpi.png"
$convert -resize 237x237 -extent 320x200 "./res/screen/android/drawable-land-ldpi.png"
$convert -resize 172x172 -extent 200x320 "./res/screen/android/drawable-port-ldpi.png"
$convert -resize 402x402 -extent 480x800 "./res/screen/android/drawable-port-hdpi.png"
$convert -resize 563x563 -extent 800x480 "./res/screen/android/drawable-land-hdpi.png"

# Icons iOS and Android
icons="convert $icon_base -background transparent"

$icons -resize 128x128 "./res/icon/icon.png"
$icons -resize 36x36 "./res/icon/android/drawable-ldpi.png"
$icons -resize 72x72 "./res/icon/android/drawable-hdpi.png"
$icons -resize 48x48 "./res/icon/android/drawable-mdpi.png"
$icons -resize 96x96 "./res/icon/android/drawable-xhdpi.png"

$icons -resize 96x96 "./res/icon/android/drawable-xhdpi.png"

$icons -resize 29x29 "./res/icon/ios/icon-small.png"
$icons -resize 58x58 "./res/icon/ios/icon-small@2x.png"
$icons -resize 40x40 "./res/icon/ios/icon-40.png"
$icons -resize 80x80 "./res/icon/ios/icon-40@2x.png"
$icons -resize 50x50 "./res/icon/ios/icon-50.png"
$icons -resize 100x100 "./res/icon/ios/icon-50@2x.png"
$icons -resize 60x60 "./res/icon/ios/icon-60.png"
$icons -resize 120x120 "./res/icon/ios/icon-60@2x.png"
$icons -resize 57x57 "./res/icon/ios/icon.png"
$icons -resize 114x114 "./res/icon/ios/icon@2x.png"
$icons -resize 72x72 "./res/icon/ios/icon-72.png"
$icons -resize 144x144 "./res/icon/ios/icon-72@2x.png"
$icons -resize 76x76 "./res/icon/ios/icon-76.png"
$icons -resize 152x152 "./res/icon/ios/icon-76@2x.png"

# Ref: http://cordova.apache.org/docs/en/3.6.0/config_ref_images.md.html
