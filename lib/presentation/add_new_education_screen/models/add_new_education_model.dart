import 'package:get/get.dart';
import 'package:job_seeking_app/data/models/selectionPopupModel/selection_popup_model.dart';

class AddNewEducationModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ].obs;

  DateTime selectedSmalllabelregulTwoTxt = DateTime.now();

  Rx<String> smalllabelregulTwoTxt = Rx("lbl_select_date".tr);

  DateTime selectedSmalllabelregulThreeTxt = DateTime.now();

  Rx<String> smalllabelregulThreeTxt = Rx("lbl_select_date".tr);
}
