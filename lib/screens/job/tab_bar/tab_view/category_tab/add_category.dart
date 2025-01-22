import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});

  @override
  State<BottomContainer> createState() => _BottomContainerState();
}

class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(.35),
      width: double.infinity,
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: Text('Add Category', style: TextStyle(fontSize: 23, color: AppConstants.blackColor, fontWeight: FontWeight.w700,),)),
                      5.h,
         const Center(child: Text('Select a category related to your job', style: TextStyle(fontSize: 15, color: Color(0xff606060)),)),

          ],
        ),
      ),
    );
  }
}
