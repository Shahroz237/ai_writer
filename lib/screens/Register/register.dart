import 'package:ai_writer/screens/Register/widgets/bottom_textbutton.dart';
import 'package:ai_writer/screens/Register/widgets/top_container_register.dart';
import 'package:ai_writer/screens/sign_in/sign_in.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/divider.dart';
import 'package:ai_writer/utils/reusable/social_login_buttons.dart';
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
                  CustomTextFormField(labelText: 'Email',
                    controller: emailController,
                    focusNode: emailFocus,
                    onFieldSubmitted: (){
                      FocusScope.of(context).requestFocus(passwordFocus);
                    },
                  ),
                  15.h,
                  CustomTextFormField(labelText: 'Password',
                    controller: passwordController,
                    inputAction: TextInputAction.next,
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
                    inputAction: TextInputAction.done,
                    focusNode: confirmPasswordFocus,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: isPassVisible,
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
                  CustomElevatedButton(text: 'Register', onPress: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignIn()));
                  },
                  ),
                  7.h,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ReuseableDivider(),
                  ),
                  7.h,
                  const SocialLoginButtons(text: 'Google', image: 'assets/google.svg'),
                  15.h,
                  const SocialLoginButtons(text: 'Facebook', image: 'assets/fb.svg'),
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
