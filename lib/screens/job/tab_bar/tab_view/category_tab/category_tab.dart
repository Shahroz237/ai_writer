import 'package:ai_writer/screens/job/tab_bar/tab_view/category_tab/add_category.dart';
import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
class CategoryTab extends StatefulWidget {
  const CategoryTab({super.key});
  @override
  State<CategoryTab> createState() => _CategoryTabState();
}
class _CategoryTabState extends State<CategoryTab> {
  late List<bool> switchStates;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    switchStates = List<bool>.filled(AppConstants.categoryList.length, true);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      ),
      child: Column(
        children: [
                7.h,
       Row(
         children: [
            Text('Categories', style: AppTextStyles.categoryBoldText),
           const Spacer(),
           TextButton(
               style: TextButton.styleFrom(
                 padding: const EdgeInsets.all(6),
                 tapTargetSize: MaterialTapTargetSize.shrinkWrap,
               ),
               onPressed: (){
                      showModalBottomSheet(
                          showDragHandle: true,
                          context: context,
                          builder: (context){
                        return const BottomContainer();
                      });

           }, child:  Text('+Add New', style: AppTextStyles.textButtonText)),
         ],
       ),
          Expanded(
            child: ListView.builder(
                itemCount: AppConstants.categoryList.length,
                itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Container(
                  height: context.h(.09),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppConstants.tabBackgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(AppConstants.categoryList[index],style: AppTextStyles.categorySemiBoldText,),
                  subtitle: Row(
                    children: [
                      TextButton(
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(6),
                            minimumSize: const Size(5, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child:  Text('view jobs', style: AppTextStyles.categoryButtonText)),
                            25.w,
                      TextButton(onPressed: (){},
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(6),
                            minimumSize: const Size(5, 20),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child:  Text('Delete', style: AppTextStyles.categoryButtonDeleteText,)),],
                  ),
                    trailing: Transform.scale(
                      scale: .6,
                      child: Switch(value: switchStates[index],
                          activeColor:  AppConstants.whiteColor,
                          inactiveThumbColor: AppConstants.whiteColor,
                          inactiveTrackColor: AppConstants.inActiveSwitchColor,
                          activeTrackColor:AppConstants.switchColor ,
                          onChanged: (bool value){
                        setState(() {
                          switchStates[index]=value;
                        });
                      }),
                    ),),
                ),
              );
            }),
          )],
      ),);}
}