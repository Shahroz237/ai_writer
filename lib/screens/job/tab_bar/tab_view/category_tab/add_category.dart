import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/reusable/button.dart';
class BottomContainer extends StatefulWidget {
  const BottomContainer({super.key});
  @override
  State<BottomContainer> createState() => _BottomContainerState();
}
class _BottomContainerState extends State<BottomContainer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.h(.4),
      width: double.infinity,
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Center(child: Text('Add Category', style: AppTextStyles.addCategoryBoldText)),
                      3.h,
          Center(child: Text('Select a category related to your job', style: AppTextStyles.addCategoryNormalText ,)),
                   10.h,
             Text('Select Category:', style: AppTextStyles.addCategorySemiBoldText),
              10.h,
              const DropdownMenu<Color>(
                 hintText: 'Select Category',
               // label: Text('Select Category', style: TextStyle(fontSize: 14, color: AppConstants.blackColor),),
                width: double.infinity,
                enableSearch: true,
                enableFilter: true,
                textStyle: TextStyle(color: AppConstants.blackColor,),
                dropdownMenuEntries: <DropdownMenuEntry<Color>>[
            DropdownMenuEntry(value: Colors.red, label: 'Red'),
              DropdownMenuEntry(value: Colors.green, label: 'Green'),
              DropdownMenuEntry(value: Colors.amber, label: 'Amber')
            ]),
            60.h,
            CustomElevatedButton(text: 'Add', onPress: () {
              Navigator.pop(context);
            },
            )
          ],
        ),
      ),
    );
  }
}
