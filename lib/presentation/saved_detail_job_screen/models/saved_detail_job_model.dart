import 'package:get/get.dart';
import 'listclock1_item_model.dart';
import 'listdescription1_item_model.dart';

class SavedDetailJobModel {
  RxList<Listclock1ItemModel> listclock1ItemList =
      RxList.generate(3, (index) => Listclock1ItemModel());

  RxList<Listdescription1ItemModel> listdescription1ItemList =
      RxList.generate(3, (index) => Listdescription1ItemModel());
}
