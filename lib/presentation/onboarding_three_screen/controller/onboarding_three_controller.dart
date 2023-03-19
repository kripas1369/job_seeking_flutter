import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/onboarding_three_screen/models/onboarding_three_model.dart';

class OnboardingThreeController extends GetxController {
  Rx<OnboardingThreeModel> onboardingThreeModelObj = OnboardingThreeModel().obs;

  Rx<int> silderIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
