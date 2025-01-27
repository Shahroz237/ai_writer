import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class JobTab extends StatefulWidget {
  const JobTab({super.key});
  @override
  State<JobTab> createState() => _JobTabState();
}
class _JobTabState extends State<JobTab> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
            setState(() {
              selectedIndex=index;
            });
          },
          child: Container(
            height: context.h(.23),
            width: double.infinity,
            decoration: BoxDecoration(
              color: selectedIndex==index?  AppConstants.onTapColor: AppConstants.unTapColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child:  Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Front end developer needed for\ninternal corporate app MVP - upwork", style: AppTextStyles.jobListSemiBoldText,),
                       2.h,
                    Text('15.00 - 30.00', style: AppTextStyles.jobListRegularText),
                           2.h,
                  Row(
                    children: [
                      SvgPicture.asset('assets/location_icon.svg',),
                               2.w,
                       Text('United Kingdom', style: AppTextStyles.jobListRegularText),
                            15.w,
                      SvgPicture.asset('assets/clock_icon.svg',),
                        Text('5 hours ago', style: AppTextStyles.jobListRegularText),
                    ],
                  ),
                        2.h,
                   Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",
                overflow: TextOverflow.visible,
                  style: AppTextStyles.jobListLightText
                  )
                ],),
            ),
          ),
        ),);
    });
  }
}
