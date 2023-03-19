import 'package:get/get.dart';
import 'notifications_item_model.dart';

class NotificationsModel {
  RxList<NotificationsItemModel> notificationsItemList =
      RxList.generate(4, (index) => NotificationsItemModel());
}
