import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './models/Globals.dart';
import './views/components/setting.dart';

void main() {
  runApp(MyApp());
}

bool isIos = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (isIos == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                actions: [
                  Switch(
                      value: isIos,
                      onChanged: (val) {
                        setState(() {
                          isIos = val;
                        });
                      }),
                ],
                backgroundColor: Colors.deepOrange,
                title: Text('Settings UI'),
              ),
              body: Container(
                padding: EdgeInsets.all(5),
                child: Setting(),
              ),
            ),
          )
        : CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.deepOrange,
                middle: Text(
                  'Settings UI',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                trailing: CupertinoSwitch(
                    activeColor: CupertinoColors.systemOrange.highContrastColor,
                    value: isIos,
                    onChanged: (val) {
                      setState(() {
                        isIos = val;
                      });
                    }),
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                child: Setting(),
              ),
            ),
          );
  }
}
