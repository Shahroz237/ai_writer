import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
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
            height: context.h(.21),
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
                   const Text("Front end developer needed for\ninternal corporate app MVP - upwork", style: TextStyle(
                        color: AppConstants.blackColor,
                     fontSize: 14,
                     fontWeight: FontWeight.w700,
                   ),),
                       2.h,
                   const Text('15.00 - 30.00', style: TextStyle(color: AppConstants.textColor, fontSize: 11)),
                           2.h,
                  Row(
                    children: [
                      SvgPicture.asset('assets/location_icon.svg',),
                               2.w,
                      const Text('United Kingdom', style: TextStyle(color: AppConstants.textColor, fontSize: 12, fontWeight: FontWeight.w500)),
                            15.w,
                      SvgPicture.asset('assets/clock_icon.svg',),
                       const Text('5 hours ago', style: TextStyle(fontSize: 12, color: Color(0xff858585),fontWeight: FontWeight.w400),)
                    ],
                  ),
                        2.h,
                  const Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable",
                overflow: TextOverflow.visible,
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xff484848),
                  ),
                  )
                ],),
            ),
          ),
        ),);
    });
  }
}
