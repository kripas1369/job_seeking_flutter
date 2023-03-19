import 'package:get/get.dart';
import 'listuser_item_model.dart';
import 'listgroup_item_model.dart';

class HomeModel {
  RxList<ListuserItemModel> listuserItemList =
      RxList.generate(2, (index) => ListuserItemModel());

  RxList<ListgroupItemModel> listgroupItemList =
      RxList.generate(2, (index) => ListgroupItemModel());
}
