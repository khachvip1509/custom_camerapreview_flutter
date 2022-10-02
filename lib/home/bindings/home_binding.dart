import 'package:get/get.dart';

import '../controller/home_controller.dart';
import '../repository/home_repository.dart';
import '../service/home_service.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(HomeRepository(HomeService()));
    });
  }
}
