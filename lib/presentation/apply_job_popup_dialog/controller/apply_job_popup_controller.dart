import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/apply_job_popup_dialog/models/apply_job_popup_model.dart';

class ApplyJobPopupController extends GetxController {
  Rx<ApplyJobPopupModel> applyJobPopupModelObj = ApplyJobPopupModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
