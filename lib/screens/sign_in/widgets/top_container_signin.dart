import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utils/app_constants/constants.dart';
class TopContainerSignin extends StatefulWidget {
  const TopContainerSignin({super.key});
  @override
  State<TopContainerSignin> createState() => _TopContainerSigninState();
}
class _TopContainerSigninState extends State<TopContainerSignin> {
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
                const Text('Sign in to your', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700,
                    fontFamily: 'MyFont',
                    color: AppConstants.whiteColor ),),
                const Text('Account', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700,
                    fontFamily: 'MyFont',
                    color: AppConstants.whiteColor ),),
                          2.h,
                const Text('Sign in to your account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                    fontFamily: 'MyFont',
                    color: AppConstants.whiteColor ),),
              ]
          ),),
      ],);
  }
}
