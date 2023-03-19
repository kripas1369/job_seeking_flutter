import 'package:get/get.dart';
import 'listuser2_item_model.dart';

class ExperienceSettingModel {
  RxList<Listuser2ItemModel> listuser2ItemList =
      RxList.generate(3, (index) => Listuser2ItemModel());
}
