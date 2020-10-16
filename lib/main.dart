import 'dart:ui';
import 'Tabs.dart';
import 'package:flutter/material.dart';
/// Reference material can be done here -> https://api.flutter.dev/flutter/material/AppBar-class.html
/// https://source.android.com/devices/tv/hdmi-cec
/// https://stackoverflow.com/questions/47892639/hdmi-cec-on-android

void main() {
  runApp(MaterialApp(  //Runs and builds the "Material App
    home: MyFirstApp(),  //Home Property being set to the Myfirstapp() widget
  ));
}

class MyFirstApp extends StatelessWidget {  //Stateless Widgets cannot change over runtime.
                                            //Stateful Widgets can change over runtime
   var bgColor = Colors.grey[900];
   var fwColor = Colors.grey[850];
   var fontColor = Colors.white;
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //Scaffold is a wrapper widget, lets us use the scaffold structure for our widget tree.
                        //This is where the most of the code will be written for Myfirstapp() class names always start with a Capital.
      backgroundColor : bgColor,
      body: TabsGenerator(tabList:[Tabs(tabTitle: 'Title of this Tab', tabLayout: Container(color: Colors.blueGrey[300],))])
    );
  }
}

