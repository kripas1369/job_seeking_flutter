import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/login_screen/models/login_model.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<LoginModel> loginModelObj = LoginModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
  }
}
