import 'package:ai_writer/screens/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:ai_writer/screens/forgot_password/forgot_password.dart';
import 'package:ai_writer/screens/sign_in/widgets/bottom_textbutton.dart';
import 'package:ai_writer/screens/sign_in/widgets/top_container_signin.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/button.dart';
import 'package:ai_writer/utils/reusable/custom_textfield.dart';
import 'package:ai_writer/utils/reusable/divider.dart';
import 'package:ai_writer/utils/reusable/social_login_buttons.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../utils/app_constants/constants.dart';
class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  final emailController=TextEditingController();
  final passwordController=TextEditingController();
  FocusNode emailFocus=FocusNode();
  FocusNode passwordFocus=FocusNode();
  bool isPassVisible=true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body: SafeArea(child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                   const TopContainerSignIn(),
                   20.h,
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
               20.h,
                  CustomTextFormField(labelText: 'Password',
                    controller: passwordController,
                  inputAction: TextInputAction.done,
                  focusNode: passwordFocus,
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
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(6),
                          minimumSize: const Size(5, 10),
                          tapTargetSize: MaterialTapTargetSize.padded,
                        ),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));
                        }, child:  Text('Forgot Password', style: AppTextStyles.textButtonText,
                    )),
                  ),
                  CustomElevatedButton(text: 'Login', onPress: (){
                         Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()), (route)=> false);
                  },
                      ),
                       15.h,
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: ReuseableDivider(),
                  ),
                      15.h,
                      const SocialLoginButtons(text: 'Google', image: 'assets/google.svg'),
                      10.h,
                      const SocialLoginButtons(text: 'Facebook', image: 'assets/fb.svg'),
                      15.h,
                const BottomTextButton(),
                              ],),
                )],),
          )
    ),
    );
  }
}
