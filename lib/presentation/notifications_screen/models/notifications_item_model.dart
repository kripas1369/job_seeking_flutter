import 'package:get/get.dart';

class NotificationsItemModel {
  Rx<String> newpostTxt = Rx("lbl_new_post".tr);

  RxBool isSelectedSwitch = false.obs;

  String? id = "";
}
