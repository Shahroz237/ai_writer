
import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';

class FlushBar{
 void showFlushBar(String msg, BuildContext context, String? title, Color color)async{
        Flushbar(
   message: msg,
          flushbarPosition: FlushbarPosition.BOTTOM,
          backgroundColor: color,
          borderRadius: BorderRadius.circular(10),
          isDismissible: false,
          dismissDirection: FlushbarDismissDirection.VERTICAL,
          duration: const Duration(seconds: 5),
          messageColor: AppConstants.whiteColor,
          title: title,

          margin: EdgeInsets.only(left: 10, right: 10, bottom: 15),
 ).show(context);
 }
}