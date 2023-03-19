import 'package:get/get.dart';
import 'saved_item_model.dart';

class SavedModel {
  RxList<SavedItemModel> savedItemList =
      RxList.generate(4, (index) => SavedItemModel());
}
