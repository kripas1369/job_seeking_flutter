import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/saved_page/models/saved_model.dart';

class SavedController extends GetxController {
  SavedController(this.savedModelObj);

  Rx<SavedModel> savedModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
