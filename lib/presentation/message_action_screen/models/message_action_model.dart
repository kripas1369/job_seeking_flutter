import 'package:get/get.dart';
import 'message_action_item_model.dart';

class MessageActionModel {
  RxList<MessageActionItemModel> messageActionItemList =
      RxList.generate(4, (index) => MessageActionItemModel());
}
