import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/custom_card.dart';
import 'package:flutter/material.dart';
import '../../../utils/reusable/custom_textfield.dart';
import '../../../utils/textstyles/text_styles.dart';

class ProfessionalInfo extends StatefulWidget {
  const ProfessionalInfo({super.key});

  @override
  State<ProfessionalInfo> createState() => _ProfessionalInfoState();
}

class _ProfessionalInfoState extends State<ProfessionalInfo> {
  final experienceController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Information', style: AppTextStyles.profileTitleText),
          10.h,
          CustomTextFormField(controller: experienceController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Years of Experience',
            inputAction: TextInputAction.done,
          ),

          Text('Freelancing Profiles', style: AppTextStyles.profileTitleText),
           10.h,
          const CustomCard(svgAsset: 'assets/fiver.svg', hintText: 'Fiver link'),
          10.h,
          const CustomCard(svgAsset: 'assets/upwork.svg', hintText: 'Upwork link'),
          10.h,
          Text('Social Profiles', style: AppTextStyles.profileTitleText),
          10.h,
          const CustomCard(svgAsset: 'assets/fb.svg', hintText: 'Facebook link'),
          10.h,
          const CustomCard(svgAsset: 'assets/insta.svg', hintText: 'Instagram link'),
          10.h,
          const CustomCard(svgAsset: 'assets/x.svg', hintText: 'X link'),
          10.h,
          const CustomCard(svgAsset: 'assets/git.svg', hintText: 'Github link'),
          10.h,
        ],
      ),
    );
  }
}
