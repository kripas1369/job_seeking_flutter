import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/sign_up_create_acount_screen/models/sign_up_create_acount_model.dart';
import 'package:flutter/material.dart';

class SignUpCreateAcountController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<SignUpCreateAcountModel> signUpCreateAcountModelObj =
      SignUpCreateAcountModel().obs;

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
