import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/message_page/models/message_model.dart';

class MessageController extends GetxController {
  MessageController(this.messageModelObj);

  Rx<MessageModel> messageModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
