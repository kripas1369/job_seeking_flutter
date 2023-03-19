import '../controller/language_controller.dart';
import '../models/listenglishuk_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class ListenglishukItemWidget extends StatelessWidget {
  ListenglishukItemWidget(this.listenglishukItemModelObj);

  ListenglishukItemModel listenglishukItemModelObj;

  var controller = Get.find<LanguageController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomCheckbox(
        width: getHorizontalSize(
          295,
        ),
        text: "lbl_english_uk".tr,
        value: controller.checkbox.value,
        fontStyle: CheckboxFontStyle.PlusJakartaSansSemiBold16,
        isRightCheck: true,
        onChange: (value) {
          controller.checkbox.value = value;
        },
      ),
    );
  }
}
