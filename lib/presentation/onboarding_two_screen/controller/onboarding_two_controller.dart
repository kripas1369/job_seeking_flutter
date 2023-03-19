import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/onboarding_two_screen/models/onboarding_two_model.dart';

class OnboardingTwoController extends GetxController {
  Rx<OnboardingTwoModel> onboardingTwoModelObj = OnboardingTwoModel().obs;

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
