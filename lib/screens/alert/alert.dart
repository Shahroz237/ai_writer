import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/appbar.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_constants/constants.dart';
class Alert extends StatefulWidget {
  const Alert({super.key});
  @override
  State<Alert> createState() => _AlertState();
}
class _AlertState extends State<Alert> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarContainer(widgetList: [
      Text('Alert', style: AppTextStyles.appbarText,
      ),
          ]),

    Expanded(
      child: ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index){
      return Padding(
      padding: const EdgeInsets.only(left:8.0, right: 8, bottom: 16),
      child: GestureDetector(
      onTap: (){
      setState(() {
      selectedIndex=index;
      });
      },
      child: Container(
      height: context.h(.12),
      width: double.infinity,
      decoration: BoxDecoration(
      color: selectedIndex==index?  AppConstants.onTapColor: AppConstants.unTapColor,
      borderRadius: BorderRadius.circular(10),
      ),
      child:  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,  ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Text("Front end developer needed for\ninternal corporate app MVP - upwork", style: AppTextStyles.jobListSemiBoldText),
      10.h,
      Row(
      children: [
         Text('15.00 - 30.00', style: AppTextStyles.jobListLightText),
          50.w,
        Row(
          children: [
            SvgPicture.asset('assets/location_icon.svg',),
            3.w,
           Text('United Kingdom', style: AppTextStyles.jobListRegularText),
          ],),
      35.w,
       Text('5:34 PM', style: AppTextStyles.jobListLightText,)
      ],
      ),
      ],),
      ),
      ),
      ),);
      }),
    ),
          15.h,

        ],
      ),
    );
  }
}
