# flutter_popup_window

A popupWindow like Android popupWindow.

English | [简体中文](./README-zh_CN.md)

<img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/bottom1.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/bottom2.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/top.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/auto1.png" width="180" height="420" /> <img src="https://github.com/coolxinxin/flutter_popup_window/blob/main/screenshot/auto2.png" width="180" height="420" />

## Live Preview

👉 [https://coolxinxin.github.io/flutter_popup_window](https://coolxinxin.github.io/flutter_popup_window/#/)

## Installing

Add this to your package's `pubspec.yaml` file:

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

## Import

```dart
import 'package:flutter_popup_window/flutter_popup_window.dart';
```

## How to use

For example code [main.dart](https://github.com/coolxinxin/flutter_popup_window/blob/main/example/lib/main.dart)

Show popupWindow

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

dismiss popupWindow

```dart
 PopupWindow.dismiss();
```

## Changelog

[CHANGELOG](./CHANGELOG.md)

## License

[MIT License](./LICENSE)

