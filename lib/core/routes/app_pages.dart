import 'package:get/get.dart';

import '../../home/bindings/home_binding.dart';
import '../../home/ui/camera.dart';
import '../../home/ui/home_page.dart';
import '../../home/ui/photo_list.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(name: Routes.CAMERA, page: () => Camera(), binding: HomeBinding()),
    GetPage(
        name: Routes.LIST,
        page: () => const CameraResult(),
        binding: HomeBinding()),
  ];
}
