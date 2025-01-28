import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/custom_textfield.dart';
import 'package:ai_writer/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final countryController=TextEditingController();
  FocusNode emailFocus=FocusNode();
  FocusNode nameFocus=FocusNode();
  FocusNode countryFocus=FocusNode();
  String selectedCountryCode = '+92';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Information', style: AppTextStyles.profileTitleText),
          10.h,
          CustomTextFormField(controller: nameController,
          keyboardType: TextInputType.text,
            hintText: 'Full Name',
            inputAction: TextInputAction.next,
            focusNode: nameFocus,
            onFieldSubmitted: (){
            FocusScope.of(context).requestFocus(emailFocus);
            },
          ),
             10.h,
          CustomTextFormField(controller: nameController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Email',
            inputAction: TextInputAction.done,
            focusNode: emailFocus,
          ),
          10.h,
          TextField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              enabledBorder:  const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppConstants.profileBorderColor,
                )
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: AppConstants.profileBorderColor,
                  )
              ),
              prefixIcon: Container(
                padding: const EdgeInsets.only(left: 8, right: 0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      selectedCountryCode,
                      style: TextStyle(fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        _showCountryPicker(context);
                      },
                      child: const Icon(Icons.arrow_drop_down, size: 24),
                    ),
                    const SizedBox(
                      height: 30,
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
              ),
              hintText: 'Your WhatsApp number',
            ),
          ),
          10.h,
          CustomTextFormField(controller: countryController,
            keyboardType: TextInputType.text,
            hintText: 'Country',
            inputAction: TextInputAction.done,
            focusNode: countryFocus,
          ),
                10.h,
        ],
      ),
    );
  }
  void _showCountryPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: countries.map((country) {
            return ListTile(
              title: Text('${country.name} (+${country.dialCode})'),
              onTap: () {
                setState(() {
                  selectedCountryCode = '+${country.dialCode}';
                });
                Navigator.pop(context);
              },
            );
          }).toList(),
        );
      },
    );
  }
}

