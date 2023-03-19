import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/job_type_screen/models/job_type_model.dart';

class JobTypeController extends GetxController {
  Rx<JobTypeModel> jobTypeModelObj = JobTypeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
