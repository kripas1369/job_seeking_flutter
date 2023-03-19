import 'package:get/get.dart';
import 'listlocation_item_model.dart';

class NotificationsMyProposalsModel {
  RxList<ListlocationItemModel> listlocationItemList =
      RxList.generate(3, (index) => ListlocationItemModel());
}
