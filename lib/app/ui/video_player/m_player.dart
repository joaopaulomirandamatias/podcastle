import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastle/app/controller/video_player/m_player_controls.dart';
import 'package:video_player/video_player.dart';
import '../../controller/video_player/m_player_controller.dart';

class MPlayer extends StatelessWidget {
  MPlayer({Key key}) : super(key: key);

  final _controller = MPlayerController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MPlayerController>(
      init: _controller,
      initState: (__) {
        _controller.loadVideo(
          'http://trailers.apple.com/movies/universal/jurassicpark3d/jurrasicpark3d-tlr1_h720p.mov',
        );
      },
      builder: (_) => AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.black,
          child: Stack(
            children: [
              _.videoController.value.isInitialized
                  ? VideoPlayer(_.videoController)
                  : Container(),
              MPlayerControls(),
            ],
          ),
        ),
      ),
    );
  }
}
