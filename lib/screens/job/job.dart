import 'package:ai_writer/screens/job/tab_bar/tab_bar.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/appbar.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
class Job extends StatefulWidget {
  const Job({super.key});
  @override
  State<Job> createState() => _JobState();
}
class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          AppbarContainer(widgetList: [
            Text('Jobs', style: AppTextStyles.headerText,)
          ],
      ),
          const Expanded(child: CustomTabbar()),
          15.h,
        ],),
    );
  }
}
