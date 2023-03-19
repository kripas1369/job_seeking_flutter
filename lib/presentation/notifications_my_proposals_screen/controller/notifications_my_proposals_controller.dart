import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/notifications_my_proposals_screen/models/notifications_my_proposals_model.dart';

class NotificationsMyProposalsController extends GetxController {
  Rx<NotificationsMyProposalsModel> notificationsMyProposalsModelObj =
      NotificationsMyProposalsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
