import 'package:ai_writer/firebase_services/signin_google.dart';
import 'package:ai_writer/screens/Register/widgets/bottom_textbutton.dart';
import 'package:ai_writer/screens/Register/widgets/top_container_register.dart';
import 'package:ai_writer/screens/sign_in/sign_in.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/divider.dart';
import 'package:ai_writer/utils/reusable/social_login_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/button.dart';
import '../../utils/reusable/custom_textfield.dart';
class Register extends StatefulWidget {
  const Register({super.key});
  @override
  State<Register> createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  final confirmPasswordController=TextEditingController();
  FocusNode emailFocus=FocusNode();
  FocusNode passwordFocus=FocusNode();
  FocusNode confirmPasswordFocus=FocusNode();
  bool isPassVisible=true;
  bool isPass=true;
  final auth=FirebaseAuth.instance;
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const TopContainerRegister(),
            15.h,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                    children: [
                      CustomTextFormField(labelText: 'Email',
                        controller: emailController,
                        focusNode: emailFocus,
                        onFieldSubmitted: (){
                          FocusScope.of(context).requestFocus(passwordFocus);
                        },
                      ),
                      15.h,
                      CustomTextFormField(labelText: 'Password',
                        inputAction: TextInputAction.next,
                        controller: passwordController,
                        focusNode: passwordFocus,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isPassVisible,
                        onFieldSubmitted: (){
                          FocusScope.of(context).requestFocus(confirmPasswordFocus);
                        },
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isPassVisible=! isPassVisible;
                            });
                          },
                          icon: isPassVisible
                              ? const Icon(Icons.visibility, color: AppConstants.blackColor)
                              : const Icon(Icons.visibility_off, color: AppConstants.blackColor),),),
                      15.h,
                      CustomTextFormField(labelText: 'Confirm Password',
                        controller: confirmPasswordController,
                        previousController: passwordController,
                        inputAction: TextInputAction.done,
                        focusNode: confirmPasswordFocus,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: isPass,
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              isPass=! isPass;
                            });
                          },
                          icon: isPass
                              ? const Icon(Icons.visibility, color: AppConstants.blackColor)
                              : const Icon(Icons.visibility_off, color: AppConstants.blackColor),),),
                    ],
                  )),

                  15.h,
                  CustomElevatedButton(text: 'Register', onPress: () {
                    if (_formKey.currentState!.validate()) {
                      auth.createUserWithEmailAndPassword(email: emailController
                          .text, password: passwordController.text,);
                      Navigator.pushReplacement(context, MaterialPageRoute(
                          builder: (context) => const SignIn()));
                    }}
                  ),
                  7.h,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ReuseableDivider(),
                  ),
                  7.h,
                  GestureDetector(
                      onTap: (){FirebaseServices().signInWithGoogle(context);},
                      child: const SocialLoginButtons(text: 'Google', image: 'assets/google.svg')),
                  15.h,
                  const SocialLoginButtons(text: 'Apple', image: 'assets/apple.svg'),
                   10.h,
                  const BottomTextButton(),
                ],
              ),
            )],
        ),
      )),
    );
  }
}
