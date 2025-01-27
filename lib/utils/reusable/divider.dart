import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../app_constants/constants.dart';
class ReuseableDivider extends StatefulWidget {
  const ReuseableDivider({super.key});
  @override
  State<ReuseableDivider> createState() => _ReuseableDividerState();
}
class _ReuseableDividerState extends State<ReuseableDivider> {
  @override
  Widget build(BuildContext context) {
    return    Row(
      children: [
        const Expanded(
          child: Divider(
            color: AppConstants.dividerColor,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('or', style: AppTextStyles.dividerText),
        ),
        const Expanded(
          child: Divider(
            color: AppConstants.dividerColor,
          ),
        ),],);
  }
}
