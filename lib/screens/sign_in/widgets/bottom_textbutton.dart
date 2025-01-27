import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import '../../Register/register.dart';
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
        Text("Don't have an Account?", style: AppTextStyles.helperText,),
         4.w,
        TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.all(6),
            minimumSize: const Size(5, 20),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Register()));},
          child:  Text('Register', style: AppTextStyles.textButtonText,),
        )],
    );}
}
