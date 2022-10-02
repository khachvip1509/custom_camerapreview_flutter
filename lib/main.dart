import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';

void main() async {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.pages,
  ));
}
