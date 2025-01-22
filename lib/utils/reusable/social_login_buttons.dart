import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app_constants/constants.dart';

class SocialLoginButtons extends StatelessWidget {
  final String text;
  final String image;
  const SocialLoginButtons({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: context.h(.073),
      width: context.w(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color(0xffBCBCBC),
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SvgPicture.asset(image),
          ),
           Text(text, style: const TextStyle(fontFamily: 'MyFont', fontWeight: FontWeight.w500, fontSize: 18, color: AppConstants.blackColor),)
        ],
      ),
    );

  }
}
