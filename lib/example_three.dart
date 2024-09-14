import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/controllers/example_three_controller.dart';

class ExampleThree extends StatefulWidget {
  const ExampleThree({super.key});

  @override
  State<ExampleThree> createState() => _ExampleThreeState();
}

class _ExampleThreeState extends State<ExampleThree> {

  final ExampleThreeController exampleThreeController = ExampleThreeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Notifications'),
              Obx(()=>  Switch(value: exampleThreeController.notification.value,
                  onChanged: (value){
                    exampleThreeController.setNotification(value);
                  }))
            ],
          )
        ],
      ),
    );
  }
}
