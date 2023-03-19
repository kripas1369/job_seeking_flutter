import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/privacy_screen/models/privacy_model.dart';

class PrivacyController extends GetxController {
  Rx<PrivacyModel> privacyModelObj = PrivacyModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
