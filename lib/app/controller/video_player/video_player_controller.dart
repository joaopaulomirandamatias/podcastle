import 'package:get/get.dart';
import 'package:podcastle/app/data/model/video.dart';
import '../../ui/theme/app_videos.dart' as v;


class VideoPlayerController extends GetxController{

  List<Video> _videos = [];
  List<Video> get videos => _videos;

  @override
  void onReady(){

    this._videos = v.videos.map((e) => Video.fromJson(e)).toList();
    update();
  }
}