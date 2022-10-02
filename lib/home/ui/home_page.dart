import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/routes/app_routes.dart';
import '../../core/widgets/custom_scaffold.dart';
import '../controller/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(body: _content());
  }

  Center _content() {
    return Center(
        child: Column(
      children: [
        Image.asset("assets/icon.png"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Take Photos", style: _customTextStyle()),
            const SizedBox(width: 12),
            IconButton(
                iconSize: 30,
                icon: const Icon(Icons.camera_alt),
                onPressed: () async {
                  Get.find<HomeController>().imageFiles = [];
                  Get.toNamed(Routes.CAMERA);
                }),
          ],
        ),
      ],
    ));
  }

  TextStyle _customTextStyle() {
    return const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.italic);
  }
}
