import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class Advertisement extends StatelessWidget {
  const Advertisement ({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: context.h(.1),
        width: double.infinity,
        decoration:  BoxDecoration(
          color: const Color(0xffFADDDD),
            borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
              15.h,
            SvgPicture.asset('assets/gift_icon.svg'),
                  15.w,
            const Text('Try UpAlert 3 days for free.\nActivate premium', style: TextStyle(color: AppConstants.blackColor, fontSize: 16, fontWeight: FontWeight.w500),),

          ],
        ),
      ),
    );
  }
}
