import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: const Text('Navigate to screen two'),
              onTap: (){
                //without routes
                Get.to(ScreenTwo(Name: 'Awais'));
                // When using routes
                Get.toNamed('/screenTwo', arguments: [
                  'Awais'
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
