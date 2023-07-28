import 'package:chat_app/src/components/animation_icon.dart';
import 'package:chat_app/src/components/buttons/custom_button.dart';
import 'package:chat_app/src/components/buttons/field/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView(this.isLogin, {Key? key}) : super(key: key);
  final bool isLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const AnimationLogo(size: 180),
          const Column(
            children: [
              CustomTextFiled(
                hintText: "Enter your email",
                labelText: "Email",
              ),
              SizedBox(height: 10),
              CustomTextFiled(
                hintText: "Enter your password",
                labelText: "Password",
              ),
            ],
          ),
          CustomButton(
            text: isLogin ? "Login" : "Register",
            backgroundColor: Colors.blueGrey,
            borderRadius: 30,
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}
