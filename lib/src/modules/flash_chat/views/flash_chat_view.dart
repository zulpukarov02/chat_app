import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:chat_app/src/components/animation_icon.dart';
import 'package:chat_app/src/components/buttons/custom_button.dart';
import 'package:chat_app/src/constants/app_colors.dart';
import 'package:chat_app/src/constants/text_styles.dart';
import 'package:chat_app/src/modules/flash_chat/controllers/flash_chat_controller.dart';
import 'package:chat_app/src/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlashChatView extends GetView<FlashChatController> {
  const FlashChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const AnimationLogo(),
              DefaultTextStyle(
                  style: AppTextStyle.flashStyle,
                  child: AnimatedTextKit(
                    totalRepeatCount: 250,
                    animatedTexts: [
                      WavyAnimatedText("Flash Chat"),
                    ],
                  ))
            ],
          ),
          const SizedBox(height: 15),
          CustomButton(
            text: "Login",
            backgroundColor: AppColors.loginButton,
            onPressed: () async => await Get.toNamed(Routes.LOGIN, arguments: true),
          ),
          const SizedBox(height: 15),
          CustomButton(
            text: "Register",
            backgroundColor: AppColors.registerButton,
            onPressed: () async => await Get.toNamed(Routes.LOGIN, arguments: false),
          ),
        ],
      ),
    );
  }
}
