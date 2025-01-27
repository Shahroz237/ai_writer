import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';

import '../app_constants/constants.dart';

class AppbarContainer extends StatelessWidget {
 final List<Widget> widgetList;
   const AppbarContainer({super.key, required this.widgetList});

  @override
  Widget build(BuildContext context) {
    return       Container(
      height: context.h(.16),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: AppConstants.themeColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          )
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 75,left: 12),
        // child: Text('Jobs', style: TextStyle(fontSize: 28, color: AppConstants.whiteColor, fontWeight: FontWeight.w500, ),),
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: widgetList,
               ),
      ),
    );

  }
}
