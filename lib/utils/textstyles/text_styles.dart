import 'package:flutter/material.dart';

import '../app_constants/constants.dart';

class AppTextStyles{

 static TextStyle headlinesText=const TextStyle(fontSize: 33, fontWeight: FontWeight.w700,
      fontFamily: 'MyFont',
      color: AppConstants.whiteColor,
  );

 static TextStyle subHeadlinesText=const TextStyle(fontSize: 15, fontWeight: FontWeight.w400,
     fontFamily: 'MyFont',
     color: AppConstants.whiteColor );

 static TextStyle elevatedButtonText= const TextStyle(
   fontSize: 17,
   fontWeight: FontWeight.w600,
   color: AppConstants.whiteColor,
 );


 static TextStyle helperText=const TextStyle(fontSize: 15,
     fontWeight: FontWeight.w400,
     fontFamily: 'MyFont',
     color: AppConstants.helperTextColor);

 static TextStyle textButtonText=const TextStyle(fontSize: 15, fontWeight: FontWeight.w400,
     fontFamily: 'MyFont',
     color: AppConstants.themeColor);

 static TextStyle socialButtonText=const TextStyle(fontFamily: 'MyFont', fontWeight:
 FontWeight.w500,
     fontSize: 18,
     color: AppConstants.blackColor);

 static TextStyle dividerText=const TextStyle(color: AppConstants.dividerTextColor,
     fontSize: 21,
     fontFamily: 'MyFont',
     fontWeight: FontWeight.w400);

 static TextStyle emailCheckALrtText=const TextStyle(color: AppConstants.blackColor,fontSize: 23,
     fontWeight: FontWeight.w700,
     fontFamily: 'MyFont');

 static TextStyle headerText=const TextStyle(fontSize: 28,
     color: AppConstants.whiteColor,
     fontWeight: FontWeight.w500);

 static TextStyle tabsText=const TextStyle(
   color: AppConstants.whiteColor,
   fontWeight: FontWeight.w600,
   fontSize: 16,
 );

 static TextStyle jobListSemiBoldText= const TextStyle(
 color: AppConstants.blackColor,
 fontSize: 14,
 fontWeight: FontWeight.w700,
 );
 static TextStyle jobListRegularText= const TextStyle(color: AppConstants.jobListTextColor,
     fontSize: 12,
     fontWeight: FontWeight.w500);

 static TextStyle jobListLightText= const TextStyle(color: AppConstants.jobListTextColor,
     fontSize: 11,
     fontWeight: FontWeight.w400);

 static TextStyle emptyStateSemiBoldText= const TextStyle( fontSize: 25,
     color: AppConstants.blackColor,
     fontWeight: FontWeight.w500);

 static TextStyle emptyStateLightText= const TextStyle( fontSize: 13,
     color: AppConstants.blackColor,
     fontWeight: FontWeight.w100);

 static TextStyle categoryBoldText= const TextStyle(fontSize: 15,
     fontWeight: FontWeight.w700,
     color: AppConstants.blackColor);

 static TextStyle categorySemiBoldText= const TextStyle(fontSize: 17,
   color: AppConstants.blackColor,
   fontWeight: FontWeight.w500,);

 static TextStyle categoryButtonText= const TextStyle(fontSize: 11,
   color: AppConstants.categoryTextButtonColor,);

 static TextStyle categoryButtonDeleteText= const TextStyle(fontSize: 11, color:
 AppConstants.themeColor,);

 static TextStyle addCategoryBoldText= const TextStyle(fontSize: 23,
   color: AppConstants.blackColor,
   fontWeight: FontWeight.w700,);

 static TextStyle addCategoryNormalText=  const TextStyle(fontSize: 15,
     color: AppConstants.helperTextColor);

 static TextStyle addCategorySemiBoldText= const TextStyle(fontSize: 19,
     fontWeight: FontWeight.w500,
     color: AppConstants.blackColor);

 static TextStyle premiumText= const  TextStyle(color: AppConstants.blackColor, fontSize: 16, fontWeight: FontWeight.w500);

 static TextStyle welcomeText= const   TextStyle(fontFamily: 'MyFont', fontSize: 33, fontWeight: FontWeight.w500, color: AppConstants.blackColor);
 static TextStyle balanceText= const   TextStyle(color: AppConstants.whiteColor, fontSize: 15, fontWeight: FontWeight.w600,fontFamily:'MyFont');
 static TextStyle showBalanceText= const    TextStyle(color: AppConstants.balanceShowColor,fontFamily:'MyFont',fontSize: 15, fontWeight: FontWeight.w600);
 static TextStyle addMoreText= const  TextStyle(color: AppConstants.blackColor, fontSize: 15);
 static TextStyle topContainerDescriptionText= const TextStyle(color: AppConstants.whiteColor, fontFamily: 'MyFont', fontSize: 10 );


}