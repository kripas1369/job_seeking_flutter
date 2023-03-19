import 'package:get/get.dart';
import 'listuser1_item_model.dart';

class NotificationsGeneralModel {
  RxList<Listuser1ItemModel> listuser1ItemList =
      RxList.generate(4, (index) => Listuser1ItemModel());
}
