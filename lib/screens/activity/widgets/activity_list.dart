import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActivityList extends StatefulWidget {
  const ActivityList({super.key});

  @override
  State<ActivityList> createState() => _ActivityListState();
}

class _ActivityListState extends State<ActivityList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 15),
            child: Container(
              height: context.h(.13),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: AppConstants.dividerColor,
                )
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
                    child: Row(
                      children: [
                      SvgPicture.asset('assets/ai_upwork.svg', height: 30, width: 30,),
                        10.w,
                        Text('Upwork Cover Letter', style: AppTextStyles.activityListTitleText),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: SizedBox(
                            height: context.h(.05),
                            width: context.w(.57),
                            child: Text('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some formThere are many variations of passages of Lorem Ipsum',maxLines:2,style: AppTextStyles.activityListLightText,)),
                      ),

                      Expanded(
                        child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.only(bottom: 20),
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            onPressed: (){}, child: Text('View', style: AppTextStyles.textButtonText,)),
                      )

                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
