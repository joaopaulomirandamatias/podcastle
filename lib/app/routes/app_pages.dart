import 'package:get/get.dart';
import 'package:podcastle/app/ui/podcastle/podcastle_page.dart';
part './app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(name: Routes.INITIAL, page:()=> PodcastlePage(),),
  ];
}