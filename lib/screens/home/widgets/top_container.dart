import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class top_container extends StatefulWidget {
  const top_container({super.key});
  @override
  State<top_container> createState() => _top_containerState();
}
class _top_containerState extends State<top_container> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.h(.29),
      width: double.infinity,
      decoration:  const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffBEC1BF),
          Color(0xffF8F8F8),
        ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
          10.h,
            Row(
              children: [
                const Text('Welcome!', style: TextStyle(fontFamily: 'MyFont', fontSize: 33, fontWeight: FontWeight.w500, color: AppConstants.blackColor),),
                const Spacer(),
               Container(
                 height: context.h(.11),
                 width: context.w(.11),
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: AppConstants.whiteColor,
                 ),
                 child: Center(child: SvgPicture.asset('assets/setting_icon.svg',)),
               ),
                  15.w,
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png',),
                  radius: 18,
                )],
            ),
            Container(
              height: context.h(.15),
              width: double.infinity,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [
                  Color(0xff990D06),
                  Color(0xff330402),
                ]),
              ),
              child:    Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                10.h,
                   Row(
                      children: [
                        const Text('Ai Credit Balance:',style: TextStyle(color: AppConstants.whiteColor, fontSize: 15, fontWeight: FontWeight.w600,fontFamily:'MyFont'),),
                       2.w,
                        const Text('0', style: TextStyle(color: AppConstants.yellowColor,fontFamily:'MyFont',fontSize: 15, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('It is a long established fact that a reader will be \ndistracted by the readable ', style: TextStyle(color: AppConstants.whiteColor, fontFamily: 'MyFont', fontSize: 10 ),),
                        const Spacer(),
                       CircleAvatar(
                         backgroundColor: AppConstants.whiteColor,
                         radius: 20,
                         child: Center(child: Image.asset('assets/yellow_icon.png',
                           height: 25,width: 25,)),
                       )
                      ],
                    ),
                          2.h,
                    Container(
                      height: context.h(.044),
                      width: context.w(.34),
                      decoration: BoxDecoration(
                        color: AppConstants.yellowColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4.0),
                          child: Icon(Icons.add, color: AppConstants.blackColor, size: 20,),
                        ),
                          Text('ADD MORE', style: TextStyle(color: AppConstants.blackColor, fontSize: 15),)
                        ],),
                    )],
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
