import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController{


  late TextEditingController name;
  late TextEditingController email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    name = TextEditingController();
    email = TextEditingController();
  }
}