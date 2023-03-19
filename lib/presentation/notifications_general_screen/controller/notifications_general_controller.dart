import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/notifications_general_screen/models/notifications_general_model.dart';

class NotificationsGeneralController extends GetxController {
  Rx<NotificationsGeneralModel> notificationsGeneralModelObj =
      NotificationsGeneralModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
