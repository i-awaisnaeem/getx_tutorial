import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/controllers/image_picker_controller.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {

  final ImagePickerController imagePickerController = ImagePickerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx((){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: imagePickerController.imagePath.isNotEmpty ?
                FileImage(File(imagePickerController.imagePath.toString())) : null,
              ),
            ),
            TextButton(onPressed: (){ imagePickerController.getImage();},
                child: const Text('Pick Image'))
          ],
        );
      }),
    );
  }
}
