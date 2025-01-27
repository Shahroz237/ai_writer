import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../sign_in/sign_in.dart';
class BottomTextButton extends StatefulWidget {
  const BottomTextButton({super.key});
  @override
  State<BottomTextButton> createState() => _BottomTextButtonState();
}
class _BottomTextButtonState extends State<BottomTextButton> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text("I have an Account?", style: AppTextStyles.helperText),
              4.w,
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(6),
            minimumSize: const Size(5, 20),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignIn()));
          },
          child: Text('login', style: AppTextStyles.textButtonText),
        )
      ],);
  }
}
