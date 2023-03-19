import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/home_container_screen/models/home_container_model.dart';
import 'package:job_seeking_app/widgets/custom_bottom_bar.dart';

class HomeContainerController extends GetxController {
  Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
