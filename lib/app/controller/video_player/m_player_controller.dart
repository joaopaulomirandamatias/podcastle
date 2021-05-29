import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class MPlayerController extends GetxController{
 VideoPlayerController _videoController;
 VideoPlayerController get videoController => _videoController;

  Future<void>loadVideo(String url)async{
    _videoController = VideoPlayerController.network(url);
    await _videoController.initialize();
    update();
    await _videoController.play();
  }

 @override
 Future<void> onClose() async {
   _videoController?.dispose();
   return super.onClose();
 }
}