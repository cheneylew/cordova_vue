思路：采用vue来编写H5本地化页面，使用cordova使得本地H5具备调用原生功能的能力，如相机、照片等。
接下来你就可以愉快的使用vue来编写跨平台应用了。nice！
#### 1.克隆仓库
```
git clone https://github.com/cheneylew/cordova_vue.git
```

#### 2.下载cordova和vue依赖包
```
cd cordova
npm install
cd vue
npm install
```

#### 3.添加你要编译的平台
```
cd cordova
cordova platform add browser
cordova platform add ios
cordova platform add osx
```

#### 4.编译vue
```
cd vue
npm run build
```

#### 5.编译cordova到各个需要的平台
```
cd cordova
cordova run browser
cordova run ios
cordova run osx
```

#### 6.写vue页面
到vue目录下面，和平常一样运行vue，就可以愉快的写应用了。
```
cd vue
npm run dev
```
