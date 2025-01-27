import 'package:ai_writer/screens/job/tab_bar/tab_view/category_tab/category_tab.dart';
import 'package:ai_writer/screens/job/tab_bar/tab_view/job_tab/Job_tab.dart';
import 'package:ai_writer/screens/job/tab_bar/tab_view/job_tab/job_not_available.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/app_constants/constants.dart';
class CustomTabbar extends StatefulWidget {
  const CustomTabbar({super.key});
  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}
class _CustomTabbarState extends State<CustomTabbar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: AppConstants.tabBackgroundColor,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppConstants.tabBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: AppConstants.themeColor,
                  ),
                  controller: tabController,
                  isScrollable: false, // Disable scrollable tabs to divide evenly
                  unselectedLabelColor: AppConstants.unselectedTabColor, // Unselected tab text color
                  labelColor: AppConstants.whiteColor, // Selected tab text color
                  labelPadding: EdgeInsets.zero, // Remove padding around the label
                  labelStyle: AppTextStyles.tabsText,
                  tabs: [
                    SizedBox(
                      width: context.w(.45), // Adjust width manually
                      child: const Tab(
                        text: 'Keyword Jobs',
                      ),
                    ),
                    SizedBox(
                      width: context.w(.45), // Adjust width manually
                      child: const Tab(
                        text: 'Category Jobs',
                      ),
                    ),],
                ),),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                // Tab 1 content
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: JobTab(),
                  // child: NoJob1(),
                ),
                // Tab 2 content
                CategoryTab(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
