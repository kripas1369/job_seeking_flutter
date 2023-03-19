import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listuser_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/listgroup_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/widgets/app_bar/appbar_image.dart';
import 'package:job_seeking_app/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: CustomImageView(
                    imagePath: ImageConstant.imgImage50x501,
                    height: getSize(50),
                    width: getSize(50),
                    radius: BorderRadius.circular(getHorizontalSize(25)),
                    margin: getMargin(left: 24)),
                title: Padding(
                    padding: getPadding(left: 10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("msg_hi_welcome_bac".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPlusJakartaSansBold14
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.07)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 9, right: 33),
                                  child: Text("msg_find_your_dream".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlusJakartaSansMedium12Bluegray400
                                          .copyWith(
                                              letterSpacing:
                                                  getHorizontalSize(0.06)))))
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgLightbulb,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13),
                      onTap: onTapLightbulb)
                ]),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowsearch();
                              },
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 30, right: 24),
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.outlineIndigo50
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSearch,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin:
                                                getMargin(top: 2, bottom: 2)),
                                        Padding(
                                            padding:
                                                getPadding(left: 8, top: 2),
                                            child: Text("lbl_search".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPlusJakartaSansMedium16
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.08)))),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 2),
                                            child: SizedBox(
                                                width: getHorizontalSize(1),
                                                child: Divider(
                                                    height: getVerticalSize(18),
                                                    thickness:
                                                        getVerticalSize(18),
                                                    color: ColorConstant
                                                        .indigo50))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgSettingsGray900,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(
                                                left: 7, top: 2, bottom: 2))
                                      ])))),
                      Padding(
                          padding: getPadding(left: 24, top: 25),
                          child: Text("lbl_recommendation".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlusJakartaSansSemiBold18
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.09)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(193),
                              child: Obx(() => ListView.separated(
                                  padding: getPadding(left: 24, top: 17),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller.homeModelObj.value
                                      .listuserItemList.length,
                                  itemBuilder: (context, index) {
                                    ListuserItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .listuserItemList[index];
                                    return ListuserItemWidget(model);
                                  })))),
                      Padding(
                          padding: getPadding(left: 24, top: 22),
                          child: Text("lbl_recent_jobs".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterSemiBold16.copyWith(
                                  letterSpacing: getHorizontalSize(0.08)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 24, top: 16, right: 24),
                              child: Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller.homeModelObj.value
                                      .listgroupItemList.length,
                                  itemBuilder: (context, index) {
                                    ListgroupItemModel model = controller
                                        .homeModelObj
                                        .value
                                        .listgroupItemList[index];
                                    return ListgroupItemWidget(model,
                                        onTapColumngroup: onTapColumngroup);
                                  }))))
                    ]))));
  }

  onTapColumngroup() {
    Get.toNamed(AppRoutes.jobDetailsScreen);
  }

  onTapRowsearch() {
    Get.toNamed(AppRoutes.searchScreen);
  }

  onTapLightbulb() {
    Get.toNamed(AppRoutes.notificationsGeneralScreen);
  }
}
