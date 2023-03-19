import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/new_position_screen/models/new_position_model.dart';
import 'package:flutter/material.dart';

class NewPositionController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameOneOneController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController frameOneTwoController = TextEditingController();

  Rx<NewPositionModel> newPositionModelObj = NewPositionModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameOneController.dispose();
    frameOneOneController.dispose();
    countryController.dispose();
    frameOneTwoController.dispose();
  }
}
