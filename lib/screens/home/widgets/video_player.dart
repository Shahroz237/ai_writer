import 'package:ai_writer/utils/gap/gap.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController:
        VideoPlayerController.networkUrl(Uri.parse("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
        )
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
      child: Container(
        height: context.h(.23),
        width: double.infinity,
       
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: FlickVideoPlayer(
              flickManager: flickManager
          ),
        ),
      ),
    );
  }
}
