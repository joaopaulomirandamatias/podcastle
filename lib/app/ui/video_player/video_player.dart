import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastle/app/controller/video_player/video_player_controller.dart';
import 'package:podcastle/app/data/model/video.dart';
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
                      return CardVideo(video: video);
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

class CardVideo extends StatelessWidget {
  const CardVideo({
    Key key,
    @required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(247, 247, 247, 0)),
        child: ListTileVideo(video: video),
      ),
    );
  }
}

class ListTileVideo extends StatelessWidget {
  const ListTileVideo({
    Key key,
    @required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      
      title: Text(
        video.title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        video.description,
        style: TextStyle(color: Colors.grey),
        maxLines: 2,
      ),
    );
  }
}
