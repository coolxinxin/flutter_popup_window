import 'package:flutter/material.dart';
import 'package:flutter_popup_window/flutter_popup_window.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bottom1Key = GlobalKey();
  final bottom2Key = GlobalKey();
  final topKey = GlobalKey();
  final auto1Key = GlobalKey();
  final auto2Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup window'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                PopupWindow.show(
                    context: context, key: bottom1Key, child: _popupContainer(), width: 200);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 100, left: 30, right: 30),
                height: 50,
                decoration:
                BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Show bottom popup",
                  key: bottom1Key,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                PopupWindow.show(
                    context: context,
                    key: bottom2Key,
                    child: _popupContainer(),
                    left: 30,
                    right: 30);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                height: 50,
                decoration:
                BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Show bottom popup",
                  key: bottom2Key,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                PopupWindow.show(
                    context: context,
                    key: topKey,
                    child: _popupContainer(),
                    isBottom: false,
                    left: 30,
                    width: 200);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                height: 50,
                decoration:
                BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Show top popup",
                  key: topKey,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                PopupWindow.showAuto(
                    context: context,
                    key: auto1Key,
                    child: _popupContainer(),
                    width: 200,
                    height: 200);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                height: 50,
                decoration:
                BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Show auto popup",
                  key: auto1Key,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                PopupWindow.showAuto(
                    context: context,
                    key: auto2Key,
                    child: _popupContainer(),
                    left: 30,
                    right: 30,
                    height: 300);
              },
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
                height: 50,
                decoration:
                BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(25)),
                child: Text(
                  "Show auto popup",
                  key: auto2Key,
                  style: const TextStyle(
                      color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _popupContainer() {
    return Container(
      decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(
              10,
                  (index) => Container(
                alignment: Alignment.center,
                height: 30,
                child: Text(index.toString()),
              )),
        ),
      ),
    );
  }
}
