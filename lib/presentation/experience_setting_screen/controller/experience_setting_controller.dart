import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/experience_setting_screen/models/experience_setting_model.dart';

class ExperienceSettingController extends GetxController {
  Rx<ExperienceSettingModel> experienceSettingModelObj =
      ExperienceSettingModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
