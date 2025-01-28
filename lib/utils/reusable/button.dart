import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final VoidCallback onPress;
   const CustomElevatedButton({super.key, required this.text, required this.onPress,
    this.color=Colors.black,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(.07),
      width: context.w(1),
      child: ElevatedButton(
          onPressed: onPress,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          ),
          child: Text(text, style: AppTextStyles.elevatedButtonText),
    ),
    );
  }
}
