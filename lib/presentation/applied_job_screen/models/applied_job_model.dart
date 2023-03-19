import 'package:get/get.dart';
import 'listclock2_item_model.dart';
import 'listdescription2_item_model.dart';

class AppliedJobModel {
  RxList<Listclock2ItemModel> listclock2ItemList =
      RxList.generate(3, (index) => Listclock2ItemModel());

  RxList<Listdescription2ItemModel> listdescription2ItemList =
      RxList.generate(3, (index) => Listdescription2ItemModel());
}
