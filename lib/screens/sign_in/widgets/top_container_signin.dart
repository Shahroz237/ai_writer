import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_constants/constants.dart';
class TopContainerSignIn extends StatefulWidget {
  const TopContainerSignIn({super.key});
  @override
  State<TopContainerSignIn> createState() => _TopContainerSignInState();
}
class _TopContainerSignInState extends State<TopContainerSignIn> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[ SizedBox(
        height: context.h(.3),
        width: context.w(1),
        child: SvgPicture.asset('assets/images.svg',fit: BoxFit.cover,),
      ),
        Positioned(
          top: context.h(.08),
          left: context.w(.03),
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text('Sign in to your', style: AppTextStyles.headlinesText),
                Text('Account', style: AppTextStyles.headlinesText),
                          2.h,
                 Text('Sign in to your account', style: AppTextStyles.subHeadlinesText),
              ]
          ),),
      ],);
  }
}
