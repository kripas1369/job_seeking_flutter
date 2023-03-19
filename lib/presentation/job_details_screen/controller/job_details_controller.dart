import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/job_details_screen/models/job_details_model.dart';

class JobDetailsController extends GetxController {
  Rx<JobDetailsModel> jobDetailsModelObj = JobDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
