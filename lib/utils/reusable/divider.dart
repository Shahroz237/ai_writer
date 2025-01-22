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
    return  const Row(
      children: [
        Expanded(
          child: Divider(
            color: AppConstants.dividerColor,),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('or', style: TextStyle(color: Color(0xff9E9E9E), fontSize: 21, fontFamily: 'MyFont', fontWeight: FontWeight.w400),),
        ),
        Expanded(
          child: Divider(
            color: AppConstants.dividerColor,
          ),
        ),],);
  }
}
