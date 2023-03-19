import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/search_screen/models/search_model.dart';

class SearchController extends GetxController {
  Rx<SearchModel> searchModelObj = SearchModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
