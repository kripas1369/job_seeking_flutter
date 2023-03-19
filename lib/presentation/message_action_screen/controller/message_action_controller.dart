import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/message_action_screen/models/message_action_model.dart';
import 'package:job_seeking_app/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class MessageActionController extends GetxController {
  TextEditingController frameOneController = TextEditingController();

  Rx<MessageActionModel> messageActionModelObj = MessageActionModel().obs;

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
