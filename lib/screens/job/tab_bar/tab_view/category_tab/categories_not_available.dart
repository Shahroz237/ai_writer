import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_constants/constants.dart';
class NoCategory2 extends StatefulWidget {
  const NoCategory2({super.key});
  @override
  State<NoCategory2> createState() => _NoCategory2State();
}
class _NoCategory2State extends State<NoCategory2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppConstants.whiteColor,
      ),
      child: Column(
        children: [
                       90.h,
          Image.asset('assets/category.png',height: 85, width: 85,),
                  40.h,
           Text('No Category', style: AppTextStyles.emptyStateSemiBoldText),
                    5.h,
          Text('This seem to be like there is not any\n                 category yet', style: AppTextStyles.emptyStateLightText),
        ],
      ),);
  }
}
