import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/appbar.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_constants/constants.dart';
class Alert extends StatefulWidget {
  const Alert({super.key});
  @override
  State<Alert> createState() => _AlertState();
}
class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         const AppbarContainer(widgetList: [
      Text('Alert', style: TextStyle(fontSize: 28, color: AppConstants.whiteColor, fontWeight: FontWeight.w500),
      ),
         ]),
          130.h,
          Image.asset('assets/alert.png',height: 85, width: 85,),
          40.h,
           Text('No Alert Found', style: AppTextStyles.emptyStateSemiBoldText),
          5.h,
           Text('This seem to be like there is not any alert yet', style: AppTextStyles.emptyStateLightText),
        ],
      ),
    );
  }
}
