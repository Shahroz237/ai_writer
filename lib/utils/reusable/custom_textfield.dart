import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';

import '../app_constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String? labelText;
  final TextEditingController controller;
  final TextInputAction  inputAction;
  final TextInputType keyboardType;
  final String? hintText;
  final bool obscureText;
  final IconButton? suffixIcon;
  final TextStyle? hintStyle;
  final EdgeInsets scrollPadding;
  final int? maxLines;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final VoidCallback? onFieldSubmitted;
  const CustomTextFormField({
    Key? key,
     this.labelText,
    this.suffixIcon,
    this.hintText,
    this.maxLines=1,
    this.scrollPadding=const EdgeInsets.all(20),
    this.inputAction=TextInputAction.next,
    required this.controller,
    this.keyboardType = TextInputType.emailAddress,
    this.hintStyle=const TextStyle(color: AppConstants.hintTextColor),
    this.obscureText = false,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      scrollPadding: scrollPadding,
      maxLines: maxLines,
      textInputAction: inputAction,
      focusNode: focusNode,
      onTapOutside: (e){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
           hintStyle: hintStyle,
           labelText: labelText,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(

          ),
          enabledBorder:  const OutlineInputBorder(
            borderSide: BorderSide(
              color: AppConstants.profileBorderColor,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color:AppConstants.fieldBorderColor,
              )
          )
      ),
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!();
        }
      },
    );
  }
}
