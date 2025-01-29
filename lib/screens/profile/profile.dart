import 'package:ai_writer/screens/profile/widget/personal_info.dart';
import 'package:ai_writer/screens/profile/widget/professional_info.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/appbar.dart';
import '../../utils/textstyles/text_styles.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarContainer(
              widgetList: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:  const Icon(Icons.arrow_back_outlined,
                      color: AppConstants.whiteColor, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 78.0),
                  child: Text('Profile', style: AppTextStyles.appbarText),
                ),
              ],
            ),
          const SizedBox(height: 30,),
            Stack(
              children:[ Center(
                child: Container(
                  height: context.h(.11),
                  width: context.w(.24),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/profile_icon.png', fit: BoxFit.cover,),
                ),
              ),

                Positioned(
                  top: 35,
                  left: 190,
                  child: Container(
                    height: context.h(.08),
                    width: context.w(.08),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        AppConstants.blackColor,
                        AppConstants.whiteColor,
                      ])
                    ),
                    child: Center(child: SvgPicture.asset('assets/edit_icon_white.svg',)),
                  ),
                ),
            ]
            ),
               5.h,
            const PersonalInfo(),
              const ProfessionalInfo(),
          ],
        ),
      ),
    );
  }
}
