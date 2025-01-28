import 'package:ai_writer/screens/setting/widgets/setting_listile.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/appbar.dart';
import '../../utils/textstyles/text_styles.dart';
import '../profile/profile.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppbarContainer(
            widgetList: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_outlined,
                    color: AppConstants.whiteColor, size: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 78.0),
                child: Text('Setting', style: AppTextStyles.appbarText),
              ),
            ],
          ),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.h,
                 Text('Account', style: AppTextStyles.settingHeadlineText),
                   5.h,
                 ListTile(
                  leading: const CircleAvatar(
                    backgroundImage:AssetImage('assets/profile_icon.png'),
                    radius: 25,
                  ),
                  title: Text('Flores Juanita', style: AppTextStyles.accountTitleText,),
                   subtitle: Text('Signinaccounttest@gmail.com', style: AppTextStyles.jobListRegularText,),
                    trailing: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                      },
                      child: Container(
                        height: context.h(.05),
                        width: context.w(.11),
                        decoration: BoxDecoration(
                             color: AppConstants.trailingBackColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(child: SvgPicture.asset('assets/forward_arrow.svg')),
                      ),
                    ),
                ),
                15.h,
                Text('Setting', style: AppTextStyles.settingHeadlineText),
                5.h,
                const SettingListile(),
           
                   SizedBox(height: context.h(.19),),
                CustomElevatedButton(
                    color: AppConstants.themeColor,
                    text: 'Logout', onPress: (){}

                )
           
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
