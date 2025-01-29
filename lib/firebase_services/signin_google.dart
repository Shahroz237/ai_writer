

import 'package:ai_writer/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ai_writer/utils/reusable/flushbar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseServices{
  final FirebaseAuth _auth=FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn=GoogleSignIn();

  Future<String?> signInWithGoogle(BuildContext context)async{
  try{
    final GoogleSignInAccount? googleSignInAccount=await _googleSignIn.signIn();

    final GoogleSignInAuthentication googleSignInAuthentication= await googleSignInAccount!.authentication;
          final AuthCredential credential=GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken,
          );
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()));
          FlushBar().showFlushBar('Welcome you have been login successfully', context,"Congratulations" , const Color(0xff145a32));
          await _auth.signInWithCredential(credential);
  }on FirebaseAuthException catch(e){
     debugPrint(e.message);
     throw e;
  }
  }
}