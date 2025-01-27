import 'package:flutter/material.dart';

import '../app_constants/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final TextInputAction  inputAction;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconButton? suffixIcon;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final VoidCallback? onFieldSubmitted;
  const CustomTextFormField({
    Key? key,
    required this.labelText,
    this.suffixIcon,
    this.inputAction=TextInputAction.next,
    required this.controller,
    this.keyboardType = TextInputType.emailAddress,
    this.obscureText = false,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,

      textInputAction: inputAction,
      focusNode: focusNode,
      onTapOutside: (e){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
           labelText: labelText,
          suffixIcon: suffixIcon,
          border: const OutlineInputBorder(

          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff79747E),
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
