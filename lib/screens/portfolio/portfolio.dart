import 'package:ai_writer/screens/portfolio/display_portfolio/display_portfolio.dart';
import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:ai_writer/utils/reusable/appbar.dart';
import 'package:ai_writer/utils/reusable/button.dart';
import 'package:ai_writer/utils/reusable/custom_textfield.dart';
import 'package:flutter/material.dart';
import '../../utils/textstyles/text_styles.dart';
class Portfolio extends StatefulWidget {
  final List<Map<String, String>> portfolioItems;
  final Function() onNewItem;
  Portfolio({super.key, required this.portfolioItems, required this.onNewItem});
  @override
  State<Portfolio> createState() => _PortfolioState();
}
class _PortfolioState extends State<Portfolio> {
  final titleController = TextEditingController();
  final desController = TextEditingController();
  String? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 28.0),
        child: CustomElevatedButton(
          text: 'Save',
          onPress: () {
            widget.portfolioItems.add({
              'title': titleController.text,
              'category': selectedCategory ?? 'No Category',
              'description': desController.text,
            });

            widget.onNewItem();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DisplayPortfolio(
                        portfolioItems: widget.portfolioItems)));
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarContainer(
              widgetList: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_outlined,
                      color: AppConstants.whiteColor, size: 30),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Text('Add Portfolio', style: AppTextStyles.appbarText),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  15.h,
                  Text('Title:', style: AppTextStyles.portfolioHeadingText),
                  5.h,
                  CustomTextFormField(
                    hintText: 'Enter Title',
                    controller: titleController,
                    keyboardType: TextInputType.text,
                    inputAction: TextInputAction.done,
                  ),
                  15.h,
                  Text('Select Category:', style: AppTextStyles.portfolioHeadingText),
                  5.h,
                  SizedBox(
                    width: double.infinity,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppConstants.textFieldBorderColor,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          value: selectedCategory,
                          hint:  Text("Select Category", style: AppTextStyles.dropDownText,),
                          
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCategory = newValue;
                            });
                          },
                          isExpanded: true,
                          items: <String>['Web Development', 'App Development']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                  15.h,
                  Text('Description:', style: AppTextStyles.portfolioHeadingText),
                  5.h,
                  CustomTextFormField(
                    controller: desController,
                    hintText: 'Description',
                    maxLines: 4,
                    inputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
