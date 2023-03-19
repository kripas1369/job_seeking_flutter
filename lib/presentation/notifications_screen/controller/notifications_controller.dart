import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/notifications_screen/models/notifications_model.dart';

class NotificationsController extends GetxController {
  Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
