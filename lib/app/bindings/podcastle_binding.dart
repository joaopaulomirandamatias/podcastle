
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:podcastle/app/controller/podcastle/podecastle_controller.dart';
import 'package:podcastle/app/data/provider/api.dart';
import 'package:podcastle/app/data/repository/podcast_repository.dart';

class PodcastleBinding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PodcastleController>(() {
      return PodcastleController(
          repository:
          MyRepository(apiClient: MyApiClient(httpClient: http.Client())));
    });
  }

}