

import 'package:flutter/cupertino.dart';

extension Gap on num{
   SizedBox get h => SizedBox(height: toDouble(),);
   SizedBox get w => SizedBox(width: toDouble(),);
}

extension Mediaquerygap on BuildContext{
   double h(double h){
     return  MediaQuery.sizeOf(this).height*h;
   }

  double w(double w){
     return  MediaQuery.sizeOf(this).width*w;
   }
}

