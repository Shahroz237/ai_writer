import 'package:ai_writer/screens/home/widgets/tool_list.dart';
import 'package:ai_writer/screens/home/widgets/advertiesment.dart';
import 'package:ai_writer/screens/home/widgets/video_player.dart';
import 'package:ai_writer/screens/home/widgets/top_container.dart';
import 'package:ai_writer/utils/app_constants/constants.dart';
import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: SafeArea(
           child: SingleChildScrollView(
             scrollDirection: Axis.vertical,
             child: Column(

               children: [
                 const top_container(),
                   10.h,
                     const Advertisement(),
                 const ToolList(),
                 const VideoPlayer(),
               ],
             ),
           ),
         ),
    );
  }
}
