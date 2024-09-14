import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_one.dart';
import 'package:getx_tutorial_flutter/home_screen/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx Tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title:const Text('GetX Dialog Alert'),
              subtitle: const Text('Dialog alert with getX'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  middleText: 'Are you sure to delete this chat?',
                  contentPadding: const EdgeInsets.all(20),
                //  textConfirm: 'Yes',
                //  textCancel: 'No',
                  confirm: TextButton(onPressed: (){}, child: const Text('Yes')),
                  cancel: TextButton(
                      onPressed: (){
                        Get.back();}, 
                      child: const Text('Np'))
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('GetX Bottom sheet '),
              subtitle: const Text('Bottom sheet with getX'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text('Navigate to screen one'),
              onTap: (){
             //   Get.to(ScreenOne());
                Get.toNamed('/screenOne');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: Get.height * .07,
              width: Get.width * 1,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10)
              ),
              child: const Center(
                child: Text('Media Query'),
              ),
            ),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text('Select your language'.tr),
                ),
                SizedBox( height: Get.height *.01,),
                Row(
                  children: [
                    OutlinedButton(onPressed: (){
                      Get.updateLocale(const Locale('en','US'));
                    },
                        child: const Text('English')),
                    SizedBox(width: Get.width * 0.04,),
                    OutlinedButton(onPressed: (){
                      Get.updateLocale(const Locale('ur','PK'));
                    }, 
                        child: const Text('Urdu'))
                  ],
                )
              ],
            ),
          ),



        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
          onPressed: (){
            Get.snackbar('Hello Awais', 'Welcome',
            icon: const Icon(Icons.add),
            onTap: (snap){

            },
            mainButton: TextButton(onPressed: (){}, 
                child: const Text('Click',
                style: TextStyle(
                  color: Colors.white
                ),)),
            backgroundColor: Colors.green,
            snackPosition: SnackPosition.TOP);
          }),
    );
  }
}
