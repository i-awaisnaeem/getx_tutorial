import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/home_screen/home_screen.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_one.dart';

class ScreenTwo extends StatefulWidget {

  // Receving data from screen one

  final String Name;
  var name;

  ScreenTwo({super.key,  this.name, required this.Name});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen two'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: Text(widget.Name),
              trailing: Text('Via getX'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text(Get.arguments[0]),
              trailing: Text('Via Routes'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Navigate to screen one'),
              onTap: (){
                Get.back();
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Navigate to home one'),
              onTap: (){
                Get.back();
                Get.back();
              },
            ),
          ),
        ],
      ),
    );
  }
}
