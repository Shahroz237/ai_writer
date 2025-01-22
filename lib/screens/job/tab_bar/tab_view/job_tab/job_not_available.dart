import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_constants/constants.dart';
class NoJob1 extends StatefulWidget {
  const NoJob1({super.key});
  @override
  State<NoJob1> createState() => _NoJob1State();
}

class _NoJob1State extends State<NoJob1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppConstants.whiteColor,
      ),
      child: Column(
        children: [
               90.h,
          Image.asset('assets/no_job.png',height: 85, width: 85,),
                 40.h,
          const Text('No Job Found', style: TextStyle( fontSize: 25, color: AppConstants.blackColor, fontWeight: FontWeight.w500),),
                      5.h,
          const Text('This seem to be like there is not any\n                      job yet', style: TextStyle( fontSize: 13, color: AppConstants.blackColor, fontWeight: FontWeight.w100),),
        ],),
    );
  }
}
