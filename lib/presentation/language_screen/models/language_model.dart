import 'package:get/get.dart';
import 'listenglishuk_item_model.dart';
import 'listchineses_item_model.dart';

class LanguageModel {
  RxList<ListenglishukItemModel> listenglishukItemList =
      RxList.generate(3, (index) => ListenglishukItemModel());

  RxList<ListchinesesItemModel> listchinesesItemList =
      RxList.generate(6, (index) => ListchinesesItemModel());
}
