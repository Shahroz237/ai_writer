import 'package:ai_writer/screens/activity/activity.dart';
import 'package:ai_writer/screens/alert/alert.dart';
import 'package:ai_writer/screens/home/home.dart';
import 'package:ai_writer/screens/job/job.dart';
import 'package:ai_writer/screens/portfolio/no_portfolio.dart';
import 'package:ai_writer/screens/portfolio/portfolio.dart';
import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../provider/provider/bottom_nav_provider.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  List<Widget>  screens=[
    const Home(),
      const Job(),
    const Alert(),
    const NoPortfolio(),
    const Activity(),
  ];
  @override
  Widget build(BuildContext context) {
       debugPrint('Print error');
    return Consumer<BottomNavProvider>(
      builder: (context, value, child){
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: AppConstants.themeColor,
              unselectedItemColor: AppConstants.blackColor,
              elevation: 10,
              selectedLabelStyle: const TextStyle(fontFamily: 'MyFont', ),
              currentIndex: value.currentIndex,
              showUnselectedLabels: true,
              onTap: (index){
                  value.updateIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(value.currentIndex==0 ?'assets/home_icon_tap.svg': 'assets/home_icon.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(value.currentIndex==1 ?'assets/jobs_tap.svg': 'assets/jobs.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: 'Jobs',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(value.currentIndex==2 ?'assets/alert_tap.svg': 'assets/alert.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: 'Alert',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(value.currentIndex==3 ?'assets/portfolio_tap.svg': 'assets/portfolio.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(value.currentIndex==4 ? 'assets/activity_tap.svg':'assets/activity.svg',
                    height: 20,
                    width: 20,
                  ),
                  label: 'Activity',
                ),
              ]),
          body: screens[value.currentIndex],
        );
      }

    );
  }
}
