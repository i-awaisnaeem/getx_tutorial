import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/controllers/example_two_controller.dart';

class ExampleTwo extends StatefulWidget {
  const ExampleTwo({super.key});

  @override
  State<ExampleTwo> createState() => _ExampleTwoState();
}

class _ExampleTwoState extends State<ExampleTwo> {

  final ExampleTwoController exampleTwoController = Get.put(ExampleTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example Two'),
      ),
      body: Column(
        children: [
          Obx(()=> Container(
            height: Get.height * .2,
            width: Get.width * .8,
            color: Colors.purple.withOpacity(exampleTwoController.opacity.value),
          )),
          Obx(()=> Slider(
              value: exampleTwoController.opacity.value,
              onChanged: (value){
                exampleTwoController.setOpacity(value);
              }))
        ],
      ),
    );
  }
}
