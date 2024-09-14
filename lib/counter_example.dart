import 'package:flutter/material.dart';
import 'package:getx_tutorial_flutter/controllers/counter_controller.dart';
import 'package:get/get.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
      ),
      body: Center(
        child: Obx(() => Text(counterController.counter.toString(),
        style: const TextStyle(fontSize: 60),)),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            counterController.incrementCounter();
          }),
    );
  }
}
