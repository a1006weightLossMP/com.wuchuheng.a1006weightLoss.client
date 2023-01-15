## 1 FQA

### 1.1 如何更改启动图标?
修改`assets/icons/launcher_icon/launcher_icon.jpeg`, 然后执行:
```bash
$ flutter pub run flutter_launcher_icons 
```

### 1.2 如何添加自定义图标?
&emsp; 在[iconfont](https://www.iconfont.cn)下载图标文件，解压后，iconfont.css和iconfont.ttf这2个文件.把这2个文放到, 
flutter项目根目录下的asstes/fonts/目录下,没有则自行创建.
然后在项目根目录下执行`flutter pub run iconfont_css_to_class:main`, 则会在`lib/common/iconfont.dart`, 里面有
图标的数据。

## 2 如何修改包名?

### 2.1 修改`android`包名

``` bash 
$ flutter pub run change_app_package_name:main <new package name>
```

### 2.2 修改`ios`包名

In Xcode > select Runner > In general tab you can change the bundle Identifier.

