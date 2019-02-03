import 'package:flutter/material.dart';
//import 'dart:async';
//
//import 'package:flutter/services.dart';
import 'package:city_picker/city_picker.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}


class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
  }
  show(context) {
    CityPicker.showCityPicker(
        context: context,
        locationCode: '640221'
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {this.show(context);
            },
            child: Text("slect"),
          ),
        ),
      ),
    );
  }
}
