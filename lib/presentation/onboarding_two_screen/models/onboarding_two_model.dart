import 'package:get/get.dart';
import 'slidermessage_item_model.dart';

class OnboardingTwoModel {
  RxList<SlidermessageItemModel> slidermessageItemList =
      RxList.generate(1, (index) => SlidermessageItemModel());
}
