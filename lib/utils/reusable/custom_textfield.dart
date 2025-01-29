import 'package:flutter/material.dart';
import '../app_constants/constants.dart';
class CustomTextFormField extends StatefulWidget {
  final String? labelText;
  final TextEditingController? controller;
  final TextInputAction  inputAction;
  final TextInputType keyboardType;
  final String? hintText;
  final bool obscureText;
  final TextEditingController? previousController;
  final IconButton? suffixIcon;
  final TextStyle? hintStyle;
  final EdgeInsets scrollPadding;
  final int? maxLines;
  final FocusNode? focusNode;
  final VoidCallback? onFieldSubmitted;
   CustomTextFormField({
    Key? key,
     this.labelText,
    this.suffixIcon,
     this.previousController,
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
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      scrollPadding: widget.scrollPadding,
      maxLines: widget.maxLines,
      textInputAction: widget.inputAction,
      focusNode: widget.focusNode,
      onTapOutside: (e){
        FocusManager.instance.primaryFocus?.unfocus();
      },
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      validator: (value){
        if(widget.labelText=='Email'){
         if(value!.isEmpty){
           return 'Please Enter Email';
         }else if(!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
             .hasMatch(value)){
           return 'Please Enter Valid Email';
         }else{
           return null;
         }
        }
        else if(widget.labelText=='Password'){
          if(value!.isEmpty){
            return 'Please Enter Password';
          }else if(value.length<6){
            return 'Password must be atleast 6 characters long';
          }else{
            return null;
          }
        }
        else if(widget.labelText=='Confirm Password'){
          if(value!.isEmpty){
            return 'Please Enter Password';
          }else if(widget.previousController!.text != value){
            return 'Password must be same as above';
          }else{
            return null;
          }
        }else {
          return null;
        }
        },
      decoration: InputDecoration(
        hintText: widget.hintText,
           hintStyle: widget.hintStyle,
           labelText: widget.labelText,
          suffixIcon: widget.suffixIcon,
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
        if (widget.onFieldSubmitted != null) {
          widget.onFieldSubmitted!();
        }
      },
    );
  }
}
