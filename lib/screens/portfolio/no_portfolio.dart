import 'package:ai_writer/screens/portfolio/portfolio.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';

import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/appbar.dart';
import '../../utils/textstyles/text_styles.dart';

class NoPortfolio extends StatefulWidget {
  const NoPortfolio({super.key});

  @override
  State<NoPortfolio> createState() => _NoPortfolioState();
}

class _NoPortfolioState extends State<NoPortfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarContainer(widgetList: [
             Text('Portfolio', style: AppTextStyles.appbarText),
         const Spacer(),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio(portfolioItems: [], onNewItem: () {  },)));
              },
              child: Container(
                height: context.h(.045),
                width: context.w(.3),
                decoration: BoxDecoration(
                  color: AppConstants.whiteColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child:Center(child: Text('+ Add New', style: AppTextStyles.textButtonText,))
              ),
            ),

          ]),
          130.h,
          Image.asset('assets/portfolio.png',height: 85, width: 85,),
          40.h,
          Text('No Portfolio Yet', style: AppTextStyles.emptyStateSemiBoldText),
          5.h,
          Text('This seem to be like there is not any portfolio yet', style: AppTextStyles.emptyStateLightText),
                5.h,
          TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(6),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Portfolio(portfolioItems: [], onNewItem: () {  },)));
          }, child: Text('+ Add New', style: AppTextStyles.textButtonText,))

        ],
      ),
    );
  }
}
