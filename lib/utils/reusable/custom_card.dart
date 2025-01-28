import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final String svgAsset;
  final String hintText;

  const CustomCard({
    Key? key,
    required this.svgAsset,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:  const RoundedRectangleBorder(
        side: BorderSide(
          color: AppConstants.profileBorderColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Row(
          children: [
            SvgPicture.asset(svgAsset),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                onTapOutside: (e){
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  hintText: hintText,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
