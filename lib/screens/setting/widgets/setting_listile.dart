import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingListile extends StatefulWidget {
  const SettingListile({super.key});

  @override
  State<SettingListile> createState() => _SettingListileState();
}

class _SettingListileState extends State<SettingListile> {
  List<String> titleList=['Account Setting','Notification Setting','Linked Accounts','About'];
  List<String>  leadingIconList=['assets/profile.svg','assets/notification.svg','assets/linked_accounts.svg','assets/about.svg',];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(.33),
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.builder(
            itemCount: leadingIconList.length,
            itemBuilder: (context, index){
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: AppConstants.avatarBackColor,
           radius: 20,
           child: Center(child: SvgPicture.asset(leadingIconList[index].toString())),
            ),
            title: Text(titleList[index].toString(),style: AppTextStyles.settingTitleText,),
            trailing: const Icon(Icons.arrow_forward_ios, color: AppConstants.blackColor,),
          );
        }),
      ),
    );
  }
}
