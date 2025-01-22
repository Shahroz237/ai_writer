import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import '../../utils/app_constants/constants.dart';
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
        child: Text('Alerts', style: TextStyle(fontSize: 28, color: AppConstants.whiteColor, fontWeight: FontWeight.w500, ),),
      ),
    ),
                  130.h,
            Image.asset('assets/alert.png',height: 85, width: 85,),
                   40.h,
            const Text('No Alert Found', style: TextStyle( fontSize: 25, color: AppConstants.blackColor, fontWeight: FontWeight.w500),),
                   5.h,
            const Text('This seem to be like there is not any alert yet', style: TextStyle( fontSize: 13, color: AppConstants.blackColor, fontWeight: FontWeight.w100),),
          ],
        ),
    );
  }
}
