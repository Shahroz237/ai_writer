import 'package:ai_writer/screens/portfolio/portfolio.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_constants/constants.dart';
import '../../../utils/reusable/appbar.dart';
import '../../../utils/textstyles/text_styles.dart';
class DisplayPortfolio extends StatefulWidget {
  final List<Map<String, String>> portfolioItems;
  const DisplayPortfolio({super.key, required this.portfolioItems});
  @override
  State<DisplayPortfolio> createState() => _DisplayPortfolioState();
}
class _DisplayPortfolioState extends State<DisplayPortfolio> {
  bool tileExpand=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarContainer(
            widgetList: [
              Text('Portfolio', style: AppTextStyles.appbarText),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Portfolio(
                        portfolioItems: widget.portfolioItems,
                        onNewItem: () {
                          (context as Element).markNeedsBuild();
                        },
                      ),
                    ),
                  );
                },
                child: Container(
                  height: context.h(.045),
                  width: context.w(.3),
                  decoration: BoxDecoration(
                    color: AppConstants.whiteColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(child: Text('+ Add New', style: AppTextStyles.textButtonText)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                10.h,
                SizedBox(
                  height: context.h(.8),
                  child: ListView.builder(
                    itemCount: widget.portfolioItems.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      final item = widget.portfolioItems[index];
                      return Theme(
                        data: ThemeData().copyWith(dividerColor: Colors.transparent),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0, right: 0.0, bottom: 25),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: AppConstants.dividerColor,
                              )
                            ),
                            child: ExpansionTile(
                              showTrailingIcon: false,
                              tilePadding: EdgeInsets.all(0),
                              title: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(item['title'] ?? 'No Title', style: const TextStyle(color: AppConstants.blackColor, fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'MyFont'),),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: tileExpand ? const Icon(Icons.keyboard_arrow_down_rounded,): const Icon(Icons.keyboard_arrow_up),
                                  ) ,
                                ],
                              ),

                              subtitle: Padding(
                                padding: const EdgeInsets.only(left: 12,top: 4.0, right: 30,),
                                child: Text(item['description'] ?? 'No Description', style: tileExpand ?const TextStyle(
                                  overflow: TextOverflow.visible,
                                  color: AppConstants.textFieldTextColor,
                                ): const TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: AppConstants.textFieldTextColor,
                                ),),
                              ),
                              trailing: SizedBox.shrink(),
                              onExpansionChanged: (bool expand){
                                setState(() {
                                  tileExpand=expand;
                                });
                              },
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 4, right: 10),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: context.h(.05),
                                          width: context.w(.5),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              border: Border.all(
                                                color: AppConstants.gradientColorPrimary,
                                              )),
                                          child: Center(
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                item['category'] ?? 'No Category',
                                                style: AppTextStyles.textButtonText,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                       Spacer(),
                                      Container(
                                        height: context.h(.09),
                                        width: context.w(.09),
                                        decoration:  BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: AppConstants.dividerColor
                                          )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset('assets/edit_icon.svg'),
                                        ),
                                      ),
                                        10.w,
                                      Container(
                                        height: context.h(.09),
                                        width: context.w(.09),
                                        decoration:  BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: AppConstants.dividerColor
                                            )
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SvgPicture.asset('assets/delete_icon.svg'),
                                        ),),
                                    ],),
                                ),],
                            ),),
                        ),);
                    },),
                ),],),
          ),],),
    );
  }}

