# flutter_popup_window

一个类似Android popupWindow的popupWindow

简体中文 | [English](./README.md)

<img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/bottom1.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/bottom2.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/top.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/auto1.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/auto2.png" width="180" height="420" />

## 在线预览效果

👉 [https://coolxinxin.github.io/flutter_popup_window](https://coolxinxin.github.io/flutter_popup_window/#/)

## 安装

将以下代码添加到您项目中的 `pubspec.yaml` 文件:

```yaml
dependencies:
  flutter_popup_window: 0.0.1
```

Or

```yaml
dependencies:
  flutter_popup_window:
    git:
      url: https://github.com/coolxinxin/flutter_popup_window.git
      ref: v0.0.1
```

## 导包

```dart
import 'package:flutter_popup_window/flutter_popup_window.dart';
```

## 如何使用

示例代码 [main.dart](https://github.com/coolxinxin/flutter_popup_window/blob/main/example/lib/main.dart)

显示popupWindow

```dart
 PopupWindow.show(
                    context: context,
                    key: key,  // widget key
                    child: Container(),
                    isBottom: false,
                    left: 30,
                    width: 200);

  PopupWindow.showAuto(
                    context: context,
                    key: key,
                    child: Container(),
                    width: 200,
                    height: 200);
```

关闭popupWindow

```dart
 PopupWindow.dismiss();
```

## 更新日志

[CHANGELOG](./CHANGELOG.md)

## 开原许可协议

[MIT License](./LICENSE)

