import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_constants/constants.dart';
class JobUnavailable extends StatefulWidget {
  const JobUnavailable({super.key});
  @override
  State<JobUnavailable> createState() => _JobUnavailableState();
}
class _JobUnavailableState extends State<JobUnavailable> {
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
           Text('No Job Found', style: AppTextStyles.emptyStateSemiBoldText),
                      5.h,
          Text('This seem to be like there is not any\n                      job yet', style: AppTextStyles.emptyStateLightText),
        ],),
    );
  }
}
