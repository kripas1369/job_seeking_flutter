import 'package:get/get.dart';
import 'listclock_item_model.dart';
import 'listdescription_item_model.dart';

class JobDetailsModel {
  RxList<ListclockItemModel> listclockItemList =
      RxList.generate(3, (index) => ListclockItemModel());

  RxList<ListdescriptionItemModel> listdescriptionItemList =
      RxList.generate(3, (index) => ListdescriptionItemModel());
}
