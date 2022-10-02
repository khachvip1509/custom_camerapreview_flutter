import 'dart:io';
import 'package:get/get.dart';

import '../repository/home_repository.dart';

class HomeController extends GetxController {
  final HomeRepository _repository;
  HomeController(this._repository) : assert(_repository != null);
  final RxString _userName = "".obs;
  List<File> imageFiles = [];

  get userName => _userName.value;

  set userName(value) => _userName.value = value;
}
