import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_constants/constants.dart';
class TopContainerRegister extends StatefulWidget {
  const TopContainerRegister({super.key});
  @override
  State<TopContainerRegister> createState() => _TopContainerRegisterState();
}
class _TopContainerRegisterState extends State<TopContainerRegister> {
  @override
  Widget build(BuildContext context) {

    return             Stack(
      children: [
        SizedBox(
          height: context.h(.3),
          width: context.w(1),
          child: SvgPicture.asset('assets/images.svg',fit: BoxFit.cover,),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               22.h,
                IconButton(
                    style: IconButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap
                    ),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_outlined,color: AppConstants.whiteColor,size: 30,)),
             55.h,
                const Text('Register', style: TextStyle(fontSize: 33, fontWeight: FontWeight.w700,
                    fontFamily: 'MyFont',
                    color: AppConstants.whiteColor ),),
                          2.h,
                const Text('Create your account', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
                    fontFamily: 'MyFont',
                    color: AppConstants.whiteColor ),),
              ]),
        ),],
    );


  }
}
