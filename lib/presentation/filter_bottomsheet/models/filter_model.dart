import 'package:get/get.dart';
import 'chipviewjobs_one_item_model.dart';

class FilterModel {
  RxList<ChipviewjobsOneItemModel> chipviewjobsOneItemList =
      RxList.generate(2, (index) => ChipviewjobsOneItemModel());
}
