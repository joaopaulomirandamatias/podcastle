import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastle/app/controller/video_player/video_player_controller.dart';
import 'package:podcastle/app/ui/video_player/m_player.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VideoPlayerController>(
      init: VideoPlayerController(),
      builder: (_) => Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                MPlayer(),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      final video = _.videos[index];
                      return ListTile(
                        title: Text(video.title),
                        subtitle: Text(
                          video.description,
                          maxLines: 2,
                        ),
                      );
                    },
                    itemCount: _.videos.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
