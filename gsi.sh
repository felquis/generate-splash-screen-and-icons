#!/bin/bash
# Generate Cordova icon and splash screens
# Thanks for http://tlvince.com

devices=android,ios,wp8
eval mkdir -p "./res/{icon,screen}/{$devices}"

# Show the user some progress by outputing all commands being run.
set -x

splash_base="./gsi-base-splash.png"
icon_base="./gsi-base-icon.png"
background="#FFFFFF"

# Splash iOS and Android and WP8
convert="convert $splash_base -background $background -gravity center"

$convert -resize 320 -extent 320x480 "./res/screen/ios/Default~iphone.png"
$convert -resize 640 -extent 640x960 "./res/screen/ios/Default@2x~iphone.png"
$convert -resize 768 -extent 768x1024 "./res/screen/ios/Default-Portrait~ipad.png"
$convert -resize 1536 -extent 1536x2048 "./res/screen/ios/Default-Portrait@2x~ipad.png"
$convert -resize 768 -extent 1024x768 "./res/screen/ios/Default-Landscape~ipad.png"
$convert -resize 1536 -extent 2048x1536 "./res/screen/ios/Default-Landscape@2x~ipad.png"
$convert -resize 640 -extent 640x1136 "./res/screen/ios/Default-568h@2x~iphone.png"
$convert -resize 750 -extent 750x1334 "./res/screen/ios/Default-667h.png"
$convert -resize 1242 -extent 1242x2208 "./res/screen/ios/Default-736h.png"
$convert -resize 1242 -extent 2208x1242 "./res/screen/ios/Default-Landscape-736h.png"

$convert -resize 720 -extent 1280x720 "./res/screen/android/drawable-land-xhdpi.png"
$convert -resize 720 -extent 720x1280 "./res/screen/android/drawable-port-xhdpi.png"
$convert -resize 320 -extent 320x480 "./res/screen/android/drawable-port-mdpi.png"
$convert -resize 320 -extent 480x320 "./res/screen/android/drawable-land-mdpi.png"
$convert -resize 200 -extent 320x200 "./res/screen/android/drawable-land-ldpi.png"
$convert -resize 200 -extent 200x320 "./res/screen/android/drawable-port-ldpi.png"
$convert -resize 480 -extent 480x800 "./res/screen/android/drawable-port-hdpi.png"
$convert -resize 480 -extent 800x480 "./res/screen/android/drawable-land-hdpi.png"

$convert -resize 768 -extent 768x1280 "./res/screen/wp8/SplashScreenImage.png"

# Icons iOS and Android and WP8
icons="convert $icon_base -background transparent"

$icons -resize 128 "./res/icon/icon.png"

$icons -resize 36 "./res/icon/android/drawable-ldpi.png"
$icons -resize 72 "./res/icon/android/drawable-hdpi.png"
$icons -resize 48 "./res/icon/android/drawable-mdpi.png"
$icons -resize 96 "./res/icon/android/drawable-xhdpi.png"

$icons -resize 180 "./res/icon/ios/icon-60@3x.png"
$icons -resize 60 "./res/icon/ios/icon-60.png"
$icons -resize 120 "./res/icon/ios/icon-60@2x.png"
$icons -resize 76 "./res/icon/ios/icon-76.png"
$icons -resize 152 "./res/icon/ios/icon-76@2x.png"
$icons -resize 40 "./res/icon/ios/icon-40.png"
$icons -resize 80 "./res/icon/ios/icon-40@2x.png"
$icons -resize 57 "./res/icon/ios/icon.png"
$icons -resize 114 "./res/icon/ios/icon@2x.png"
$icons -resize 72 "./res/icon/ios/icon-72.png"
$icons -resize 144 "./res/icon/ios/icon-72@2x.png"
$icons -resize 29 "./res/icon/ios/icon-small.png"
$icons -resize 58 "./res/icon/ios/icon-small@2x.png"
$icons -resize 50 "./res/icon/ios/icon-50.png"
$icons -resize 100 "./res/icon/ios/icon-50@2x.png"

$icons -resize 99 "./res/icon/wp8/ApplicationIcon.png"

# Ref: http://cordova.apache.org/docs/en/4.0.0/config_ref_images.md.html
