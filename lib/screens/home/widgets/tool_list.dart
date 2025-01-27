import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../utils/app_constants/constants.dart';
class ToolList extends StatefulWidget {
  const ToolList({super.key});
  @override
  State<ToolList> createState() => _ToolListState();
}
class _ToolListState extends State<ToolList> {
  final ScrollController _scrollController = ScrollController();
  bool isGridview = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Tools',
                style: TextStyle(
                  fontSize: 20,
                  color: AppConstants.blackColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isGridview = !isGridview;
                    Future.delayed(const Duration(milliseconds: 200), () {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    });
                  });
                },
                child: const Text(
                  'Show All',
                  style: TextStyle(color: Color(0xff6C6C6C), fontSize: 17),
                ),),
            ],),
        ),
        if (!isGridview)
          SizedBox(
            height: context.h(.16),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Container(
                        height: context.h(.1),
                        width: context.w(.26),
                        decoration: BoxDecoration(
                          color: AppConstants.tabBackgroundColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(child: SvgPicture.asset('assets/ai_upwork.svg')),
                      ),
                        3.h,
                      const Text(
                        'Upwork Cover\n       letter',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),),
                    ],
                  ),);
              },),),
        if (isGridview)
          SizedBox(
            height: context.h(.4),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                childAspectRatio: 3/ 4,),
              itemCount: 6, // Or your dynamic count
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: context.h(.1),
                      width: context.w(.26),
                      decoration: BoxDecoration(
                        color: AppConstants.tabBackgroundColor,
                        borderRadius: BorderRadius.circular(8),),
                      child: Center(child: SvgPicture.asset('assets/ai_upwork.svg')),
                    ),
                    5.h,
                    const Text(
                      'Upwork Cover\n       letter',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),),
                  ],);
              },),),
      ],);
  }
}