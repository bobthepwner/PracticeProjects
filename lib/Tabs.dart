import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {// A tab should only be a title and a layout



  final String tabTitle;
  final Widget tabLayout;
  final Color fwColor = Colors.grey[850];
  final Color bgColor = Colors.grey[900];

// need tablayout to change on button press
  // need to stick each button in a row of containers

  Tabs({this.tabTitle, this.tabLayout});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:45.0),
        Row(
          children: [FlatButton(onPressed: (){print('button was pressed');},height: 50.0, color: fwColor, child: Text('$tabTitle', style: TextStyle(color: Colors.white),),)],
        ),
        Expanded(child: Container(padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),color: fwColor, child: tabLayout))
      ]
    );
  }
}

class TabsGenerator extends StatelessWidget {//TabsGenerator will return the actual complete list of tabs, from a list of tabs.

  List <Tabs> tabList;

  TabsGenerator({this.tabList});

  @override
  Widget build(BuildContext context) {

    int listLength = tabList.length;
    List tabRow = [];

    print('This list contains: $listLength Tabs');
    print(Tabs().tabTitle);

    tabList.forEach((element) {
      tabRow.add({Tabs().tabTitle});
      //print('title has been added to tabRow!!');
      print('$tabRow');
    });



    return (
    Scaffold(
      body: Center(child: Text('this is just a test page....'),),
      appBar: AppBar(title: Text('this is just a test page...'))
    )
    );
  }
}

