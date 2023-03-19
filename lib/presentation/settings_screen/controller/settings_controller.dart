import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/settings_screen/models/settings_model.dart';
import 'package:job_seeking_app/widgets/custom_bottom_bar.dart';

class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
