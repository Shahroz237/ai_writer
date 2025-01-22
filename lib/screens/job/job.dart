import 'package:ai_writer/screens/job/tab_bar/tab_bar.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/app_constants/constants.dart';

class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      Container(
      height: context.h(.16),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppConstants.buttonColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 75,left: 12),
        child: Text('Jobs', style: TextStyle(fontSize: 28, color: AppConstants.whiteColor, fontWeight: FontWeight.w500, ),),
      ),
    ),          // SizedBox(height: 1,),
          const Expanded(child: CustomTabbar())
        ],
      ),
    );
  }
}
