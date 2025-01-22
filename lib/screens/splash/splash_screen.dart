import 'package:ai_writer/screens/sign_in/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignIn()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Stack(
         children:[ SizedBox(
             height: double.infinity,
           width: double.infinity,
         child: SvgPicture.asset('assets/splash.svg', fit: BoxFit.cover,),
         ),

           Center(
             child: SvgPicture.asset(
               'assets/logo.svg', // Replace with your icon image path
               width: 60, // Adjust size as needed
               height: 60,
             ),
           ),
       ]
       ),
     ),
    );
  }
}
