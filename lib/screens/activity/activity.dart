import 'package:ai_writer/screens/activity/widgets/activity_list.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/appbar.dart';
import '../../utils/textstyles/text_styles.dart';
import '../portfolio/portfolio.dart';
class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarContainer(widgetList: [
            Text('Latest Activity', style: AppTextStyles.appbarText),
            const Spacer(),
            Row(
              children: [
                SvgPicture.asset('assets/filter.svg', height: context.h(.02),width: context.w(.01),),
                3.w,
                const Text('Filter', style: TextStyle(fontSize: 17, color: AppConstants.whiteColor, fontWeight: FontWeight.w400),),
              ],
            ),

          ]),

          ActivityList(),
        ],
      ),
    );
  }
}
