import '../message_action_screen/widgets/message_action_item_widget.dart';
import 'controller/message_action_controller.dart';
import 'models/message_action_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/presentation/home_page/home_page.dart';
import 'package:job_seeking_app/presentation/message_page/message_page.dart';
import 'package:job_seeking_app/presentation/profile_page/profile_page.dart';
import 'package:job_seeking_app/presentation/saved_page/saved_page.dart';
import 'package:job_seeking_app/widgets/app_bar/appbar_image.dart';
import 'package:job_seeking_app/widgets/app_bar/appbar_title.dart';
import 'package:job_seeking_app/widgets/app_bar/custom_app_bar.dart';
import 'package:job_seeking_app/widgets/custom_bottom_bar.dart';
import 'package:job_seeking_app/widgets/custom_button.dart';
import 'package:job_seeking_app/widgets/custom_search_view.dart';

class MessageActionScreen extends GetWidget<MessageActionController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA70002,
            appBar: CustomAppBar(
                height: getVerticalSize(51),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 13, bottom: 14),
                    onTap: onTapArrowleft3),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_message".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.frameOneController,
                          hintText: "msg_search_message".tr,
                          margin: getMargin(left: 24, top: 4, right: 24),
                          padding: SearchViewPadding.PaddingT15,
                          prefix: Container(
                              margin: getMargin(
                                  left: 16, top: 17, right: 8, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 17, right: 16, bottom: 17),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgInfo)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52))),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return Padding(
                                    padding: getPadding(top: 7.5, bottom: 7.5),
                                    child: SizedBox(
                                        width: getHorizontalSize(327),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.indigo50)));
                              },
                              itemCount: controller.messageActionModelObj.value
                                  .messageActionItemList.length,
                              itemBuilder: (context, index) {
                                MessageActionItemModel model = controller
                                    .messageActionModelObj
                                    .value
                                    .messageActionItemList[index];
                                return MessageActionItemWidget(model,
                                    onTapChat: onTapChat,
                                    onTapRowdot: onTapRowdot);
                              }))),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(46),
                          width: getHorizontalSize(137),
                          text: "lbl_new_chat".tr,
                          margin: getMargin(right: 24),
                          shape: ButtonShape.RoundedBorder20,
                          padding: ButtonPadding.PaddingT14,
                          fontStyle:
                              ButtonFontStyle.PlusJakartaSansSemiBold14Gray50,
                          prefixWidget: Container(
                              margin: getMargin(right: 4),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgPlus18x18)),
                          alignment: Alignment.centerRight)
                    ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Saved:
        return AppRoutes.savedPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.savedPage:
        return SavedPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapChat() {
    Get.toNamed(AppRoutes.chatScreen);
  }

  onTapRowdot() {
    Get.toNamed(AppRoutes.chatScreen);
  }

  onTapArrowleft3() {
    Get.back();
  }
}
