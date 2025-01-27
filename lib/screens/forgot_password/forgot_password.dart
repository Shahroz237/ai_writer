import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../utils/app_constants/constants.dart';
import '../../utils/reusable/custom_textfield.dart';
import '../../utils/textstyles/text_styles.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});
  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}
class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: CustomElevatedButton(text: 'Continue', onPress: (){
          FocusManager.instance.primaryFocus?.unfocus();
               showModalBottomSheet(context: context, builder: (BuildContext context){
                 return Stack(
                   clipBehavior: Clip.none,
                   children:[ Container(
                     height: MediaQuery.sizeOf(context).height*.3,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        )
                      ),
                   ),
                     Positioned(
                       top: -40,
                       left: context.w(.4),
                       child: Container(
                         height: context.h(.1),
                         width: context.w(.2),
                         decoration:   BoxDecoration(
                           color: AppConstants.blackColor,
                           borderRadius: BorderRadius.circular(15),
                         ),
                         child: Center(child: SvgPicture.asset('assets/msg.svg',)),
                       ),
                     ),
                     Positioned(
                         top: context.h(.074),
                         width: context.w(1),
                         child:  Center(child: Text('Check your email', style: AppTextStyles.emailCheckALrtText))),
                     Positioned(
                         top: context.h(.13),
                         width: context.w(1),
                         child:  Center(child: Text('    We have sent an instruction to\nrecover your password to your email', style: AppTextStyles.helperText))),
                     Positioned(
                       top: context.h(.21),
                       width: context.w(1),
                       child: Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 12.0),
                         child: CustomElevatedButton(text: 'Done', onPress: (){
                           Navigator.pop(context);
                           FocusScope.of(context).unfocus();
                         }),
                       ),
                     )
                 ]
                 );
               });
        }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: context.h(.3),
                    width: context.w(1),
                    child: SvgPicture.asset('assets/images.svg',fit: BoxFit.cover,),
                  ),
                  Padding(
                    padding:  const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           22.h,
                          IconButton(
                            style: IconButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap
                            ),
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_back_outlined,color: AppConstants.whiteColor,size: 30,)),
                                     55.h,
                           Text('Forgot Password', style: AppTextStyles.headlinesText),
                                            2.h,
                        Text('Enter your email account to reset password', style: AppTextStyles.subHeadlinesText),
                        ]),
                  ),
                ],
              ),
                  35.h,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    CustomTextFormField(labelText: 'Email',
                      controller: emailController,
                       inputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



