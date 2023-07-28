import 'package:chat_app/src/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.backgroundColor,
    this.borderRadius = 18,
  }) : super(key: key);
  final String text;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width - 30, 60),
        backgroundColor: backgroundColor,
        textStyle: AppTextStyle.buttonStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
