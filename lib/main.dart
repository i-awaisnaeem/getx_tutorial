import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/counter_example.dart';
import 'package:getx_tutorial_flutter/example_three.dart';
import 'package:getx_tutorial_flutter/example_two.dart';
import 'package:getx_tutorial_flutter/favorite.dart';
import 'package:getx_tutorial_flutter/home_screen/home_screen.dart';
import 'package:getx_tutorial_flutter/home_screen/languages.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_one.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_two.dart';
import 'package:getx_tutorial_flutter/image_picker.dart';
import 'package:getx_tutorial_flutter/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Tutorial',
      translations: Languages(),
      fallbackLocale: const Locale('en','US'),
     // locale: Locale('ur','PK'),

    /*  home: const HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/screenOne', page: () => const ScreenOne()),
        GetPage(name: '/screenTwo', page: () => ScreenTwo(Name: 'Awais',)),
      ],
    */

    //  home: CounterExample(),
    //  home: ExampleTwo(),
    //  home: ExampleThree(),
    //  home: Favorite(),
    //  home: ImagePicker(),
      home: LoginScreen(),

    );
  }
}
