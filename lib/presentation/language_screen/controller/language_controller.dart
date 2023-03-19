import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/language_screen/models/language_model.dart';

class LanguageController extends GetxController {
  Rx<LanguageModel> languageModelObj = LanguageModel().obs;

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
