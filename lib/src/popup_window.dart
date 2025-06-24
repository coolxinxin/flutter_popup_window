import 'package:flutter/material.dart';

class PopupWindow {
  static OverlayEntry? _entry;

  /// This is a popupWindow that will automatically display according to width and height.
  /// By default, it will pop up automatically if it cannot be displayed below;
  /// When you only set left and width, it will automatically calculate whether your left distance + width will exceed the screen width.
  /// If the screen width exceeds the screen width, it will automatically shift to the left.
  static void showAuto(
      {required BuildContext context,
      required GlobalKey key,
      required Widget child,
      bool autoDismiss = true,
      double offsetTop = 30,
      double height = 220,
      double width = 200,
      double? left,
      double? right}) {
    dismiss();
    final box = key.currentContext!.findRenderObject() as RenderBox;
    final offset = box.localToGlobal(Offset.zero);
    final screenSize = MediaQuery.of(context).size;
    final preferDownTop = offset.dy + offsetTop;
    final preferUpTop = offset.dy - height - offsetTop / 2;
    final canShowDown = preferDownTop + height <= screenSize.height;
    final canShowUp = preferUpTop >= 0;
    final top = canShowDown
        ? preferDownTop
        : (canShowUp ? preferUpTop : screenSize.height - height - offsetTop);
    double autoLeft = offset.dx;
    if (autoLeft + width > screenSize.width) {
      autoLeft = screenSize.width - width - 8;
    } else if (autoLeft < 8) {
      autoLeft = 8;
    }
    _entry = _buildEntry(
        Positioned(
          left: left ?? (right == null ? autoLeft : null),
          top: top,
          right: right,
          width: (left == null && right == null) ? width : null,
          height: height,
          child: Material(
            color: Colors.transparent,
            child: child,
          ),
        ),
        autoDismiss);
    Overlay.of(context).insert(_entry!);
  }

  /// According to [isBottom] Show whether to pop up down or up.
  static void show(
      {required BuildContext context,
      required GlobalKey key,
      required Widget child,
      bool isBottom = true,
      bool autoDismiss = true,
      double offsetTop = 30,
      double? left,
      double? right,
      double height = 220,
      double? width}) {
    dismiss();
    final box = key.currentContext!.findRenderObject() as RenderBox;
    final offset = box.localToGlobal(Offset.zero);
    double top = isBottom ? offset.dy + offsetTop : offset.dy - height - offsetTop / 2;
    _entry = _buildEntry(
        Positioned(
          left: left ?? (right == null ? offset.dx : null),
          right: right,
          top: top,
          width: width,
          height: height,
          child: Material(
            color: Colors.transparent,
            child: child,
          ),
        ),
        autoDismiss);
    Overlay.of(context).insert(_entry!);
  }

  static OverlayEntry _buildEntry(Widget child, bool autoDismiss) {
    return OverlayEntry(
      builder: (context) => GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          if (autoDismiss) {
            dismiss();
          }
        },
        child: Stack(
          children: [child],
        ),
      ),
    );
  }

  ///Dismiss popupWindow
  static void dismiss() {
    _entry?.remove();
    _entry = null;
  }
}
