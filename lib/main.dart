import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:podcastle/app/ui/video_player/video_player.dart';
import 'app/bindings/podcastle_binding.dart';
import 'app/routes/app_pages.dart';
import 'app/ui/theme/app_theme.dart';

void main() {
  runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialBinding: PodcastleBinding(),
        initialRoute: Routes.INITIAL,
        theme: appThemeData,
        defaultTransition: Transition.fade,
        getPages: AppPages.pages,
        home: VideoPlayer(),
        locale: Locale('pt', 'BR'),
      )
  );
}