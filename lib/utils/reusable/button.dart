import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
  const CustomElevatedButton({super.key, required this.text, required this.onPress,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(.07),
      width: context.w(1),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppConstants.blackColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          ),
          child: Text(text, style: const TextStyle(color: AppConstants.whiteColor, fontFamily: 'MyFont', fontWeight: FontWeight.w700,fontSize: 18),)),
    );
  }
}
