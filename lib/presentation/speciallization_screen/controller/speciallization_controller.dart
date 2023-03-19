import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/speciallization_screen/models/speciallization_model.dart';
import 'package:flutter/material.dart';

class SpeciallizationController extends GetxController {
  TextEditingController group163009Controller = TextEditingController();

  TextEditingController group163010Controller = TextEditingController();

  TextEditingController group163011Controller = TextEditingController();

  TextEditingController group163012Controller = TextEditingController();

  TextEditingController group163013Controller = TextEditingController();

  TextEditingController group163014Controller = TextEditingController();

  Rx<SpeciallizationModel> speciallizationModelObj = SpeciallizationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group163009Controller.dispose();
    group163010Controller.dispose();
    group163011Controller.dispose();
    group163012Controller.dispose();
    group163013Controller.dispose();
    group163014Controller.dispose();
  }
}
