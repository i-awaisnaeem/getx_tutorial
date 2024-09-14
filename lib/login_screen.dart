import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tutorial_flutter/controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final LoginController loginController = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: loginController.emailController.value,
              decoration: InputDecoration(
                hintText: 'Email'
              ),
            ),
            SizedBox(height: Get.height * 0.02,),
            TextFormField(
              controller: loginController.passwordController.value,
              decoration: InputDecoration(
                  hintText: 'Password'
              ),
            ),
            SizedBox(height: Get.height * 0.05,),
           Obx(()=>  InkWell(
             onTap: (){
               loginController.loginApi();
             },
             child: Container(
               height: 50,
               width: Get.width * .9,
               decoration: BoxDecoration(
                   color: Colors.green
               ),
               child: Center(
                 child: loginController.loading.value ? CircularProgressIndicator(color: Colors.white,) : Text('Login'),
               ),
             ),
           ))

          ],
        ),
      ),
    );
  }
}
