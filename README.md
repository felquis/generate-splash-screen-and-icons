## Gerar splash screen e icons automaticamente para Android, iOS e Windows Phone 8

[Leia o post completo](http://nativebuild.com/2014/gerar-icones-splash-screen-cordova-phonegap.html) falando sobre como gerar Splash Screen e Icons para Android, iOS e Windows Phone 8

### Summary

This is a Phonegap/Cordova how to generate splash screens and icons for Android, iOS and Windows Phone 8 tutorial, it may not works with Phonegap Build and is only tested in Linux and OSX

1 - Install [Image Magick](http://www.imagemagick.org/)

2 - Download the files [`gsi.sh`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi.sh), [`gsi-base-icon.png`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi-base-icon.png) and  [`gsi-base-splash.png`](https://github.com/felquis/generate-splash-screen-and-icons/blob/master/gsi-base-splash.png) and save it in the root directory of your cordova/phonegap project.

(You can also clone this repo `git clone git@github.com:felquis/generate-splash-screen-and-icons.git`)

3 - Open your terminal, navigate to the root of your project, and run

````
sh gsi.sh
```

The `res/` directory will be created with all icons and splash screens necessary for Android, iOS and Windows Phone 8


4 - Update your `config.xml` with the splash screens and icons files

```xml
<platform name="android">
  <!-- Para a splash screen aparecer corretamente no Android -->
  <preference name="SplashScreen" value="screen" />
  <!--
    O ideal é usar um plugin para oculpar a splash
    screen quando seu app estiver pronto
  -->
  <preference name="SplashScreenDelay" value="1000" />
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
  <!-- images are determined by width and height. The following are supported -->
  <splash src="res/screen/ios/Default~iphone.png" width="320" height="480"/>
  <splash src="res/screen/ios/Default@2x~iphone.png" width="640" height="960"/>
  <splash src="res/screen/ios/Default-Portrait~ipad.png" width="768" height="1024"/>
  <splash src="res/screen/ios/Default-Portrait@2x~ipad.png" width="1536" height="2048"/>
  <splash src="res/screen/ios/Default-Landscape~ipad.png" width="1024" height="768"/>
  <splash src="res/screen/ios/Default-Landscape@2x~ipad.png" width="2048" height="1536"/>
  <splash src="res/screen/ios/Default-568h@2x~iphone.png" width="640" height="1136"/>
  <splash src="res/screen/ios/Default-667h.png" width="750" height="1334"/>
  <splash src="res/screen/ios/Default-736h.png" width="1242" height="2208"/>
  <splash src="res/screen/ios/Default-Landscape-736h.png" width="2208" height="1242"/>
  <!-- iOS 8.0+ -->
  <!-- iPhone 6 Plus  -->
  <icon src="res/icon/ios/icon-60@3x.png" width="180" height="180" />
  <!-- iOS 7.0+ -->
  <!-- iPhone / iPod Touch  -->
  <icon src="res/icon/ios/icon-60.png" width="60" height="60" />
  <icon src="res/icon/ios/icon-60@2x.png" width="120" height="120" />
  <!-- iPad -->
  <icon src="res/icon/ios/icon-76.png" width="76" height="76" />
  <icon src="res/icon/ios/icon-76@2x.png" width="152" height="152" />
  <!-- iOS 6.1 -->
  <!-- Spotlight Icon -->
  <icon src="res/icon/ios/icon-40.png" width="40" height="40" />
  <icon src="res/icon/ios/icon-40@2x.png" width="80" height="80" />
  <!-- iPhone / iPod Touch -->
  <icon src="res/icon/ios/icon.png" width="57" height="57" />
  <icon src="res/icon/ios/icon@2x.png" width="114" height="114" />
  <!-- iPad -->
  <icon src="res/icon/ios/icon-72.png" width="72" height="72" />
  <icon src="res/icon/ios/icon-72@2x.png" width="144" height="144" />
  <!-- iPhone Spotlight and Settings Icon -->
  <icon src="res/icon/ios/icon-small.png" width="29" height="29" />
  <icon src="res/icon/ios/icon-small@2x.png" width="58" height="58" />
  <!-- iPad Spotlight and Settings Icon -->
  <icon src="res/icon/ios/icon-50.png" width="50" height="50" />
  <icon src="res/icon/ios/icon-50@2x.png" width="100" height="100" />
</platform>
<platform name="wp8">
  <!-- images are determined by width and height. The following are supported -->
  <splash height="1280" src="res/screen/wp8/SplashScreenImage.png" width="768" />
  <icon height="99" src="res/icon/wp8/ApplicationIcon.png" width="99" />
</platform>
```

Thanks for [@tlvince](https://github.com/tlvince/phonegap-icon-splash-generator)
