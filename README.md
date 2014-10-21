## Gerar splash screen e icons automaticamente para Android e iOS

[Leia o post completo](http://nativebuild.com/2014/gerar-icones-splash-screen-cordova-phonegap.html) falando sobre como gerar Splash Screen e Icons para Android e iOS

### Summary

This is a Phonegap/Cordova how to generate splash screens and icons for Android and iOS tutorial, it may not works with Phonegap Build and is only tested in Linux and OSX

1 - Install [Image Magick](http://www.imagemagick.org/)

2 - Download the files [`gsi.sh`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi.sh), [`gsi-base-icon.png`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi-base-icon.png) and  [`gsi-base-splash.png`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi-base-splash.png) and save it in the root directory of your cordova/phonegap project. 

(You can also clone this repo `git clone git@github.com:felquis/generate-splash-screen-and-icons.git`)

3 - Open your terminal, navigate to the root of your project, and run `sh gsi.sh`, the `res/` directory will be created with all icons and splash screens necessary for Android and iOS


4 - Update your `config.xml` with the splash screens and icons files

```xml

<platform name="android">
  <preference name="SplashScreen" value="screen" />
  <splash density="land-hdpi" src="res/screen/android/drawable-land-hdpi.png" />
  <splash density="land-ldpi" src="res/screen/android/drawable-land-ldpi.png" />
  <splash density="land-mdpi" src="res/screen/android/drawable-land-mdpi.png" />
  <splash density="land-xhdpi" src="res/screen/android/drawable-land-xhdpi.png" />
  <splash density="port-hdpi" src="res/screen/android/drawable-port-hdpi.png" />
  <splash density="port-ldpi" src="res/screen/android/drawable-port-ldpi.png" />
  <splash density="port-mdpi" src="res/screen/android/drawable-port-mdpi.png" />
  <splash density="port-xhdpi" src="res/screen/android/drawable-port-xhdpi.png" />
  <icon density="ldpi" src="res/icon/android/drawable-ldpi.png" />
  <icon density="mdpi" src="res/icon/android/drawable-mdpi.png" />
  <icon density="hdpi" src="res/icon/android/drawable-hdpi.png" />
  <icon density="xhdpi" src="res/icon/android/drawable-xhdpi.png" />
</platform>
<platform name="ios">
  <splash height="480" src="res/screen/ios/Default~iphone.png" width="320" />
  <splash height="960" src="res/screen/ios/Default@2x~iphone.png" width="640" />
  <splash height="1024" src="res/screen/ios/Default-Portrait~ipad.png" width="768" />
  <splash height="2048" src="res/screen/ios/Default-Portrait@2x~ipad.png" width="1536" />
  <splash height="768" src="res/screen/ios/Default-Landscape~ipad.png" width="1024" />
  <splash height="1536" src="res/screen/ios/Default-Landscape@2x~ipad.png" width="2048" />
  <splash height="1136" src="res/screen/ios/Default-568h@2x~iphone.png" width="640" />
  <icon height="60" src="res/icon/ios/icon-60.png" width="60" />
  <icon height="120" src="res/icon/ios/icon-60@2x.png" width="120" />
  <icon height="76" src="res/icon/ios/icon-76.png" width="76" />
  <icon height="152" src="res/icon/ios/icon-76@2x.png" width="152" />
  <icon height="40" src="res/icon/ios/icon-40.png" width="40" />
  <icon height="80" src="res/icon/ios/icon-40@2x.png" width="80" />
  <icon height="57" src="res/icon/ios/icon.png" width="57" />
  <icon height="114" src="res/icon/ios/icon@2x.png" width="114" />
  <icon height="72" src="res/icon/ios/icon-72.png" width="72" />
  <icon height="144" src="res/icon/ios/icon-72@2x.png" width="144" />
  <icon height="29" src="res/icon/ios/icon-small.png" width="29" />
  <icon height="58" src="res/icon/ios/icon-small@2x.png" width="58" />
  <icon height="50" src="res/icon/ios/icon-50.png" width="50" />
  <icon height="100" src="res/icon/ios/icon-50@2x.png" width="100" />
</platform>

<icon src="res/icon/icon.png" />
```

Thanks for [@tlvince](https://github.com/tlvince/phonegap-icon-splash-generator)
