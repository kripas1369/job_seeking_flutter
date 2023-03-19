import 'package:get/get.dart';
import 'chipviewskills_one_item_model.dart';
import 'profile_item_model.dart';

class ProfileModel {
  RxList<ChipviewskillsOneItemModel> chipviewskillsOneItemList =
      RxList.generate(8, (index) => ChipviewskillsOneItemModel());

  RxList<ProfileItemModel> profileItemList =
      RxList.generate(3, (index) => ProfileItemModel());
}
