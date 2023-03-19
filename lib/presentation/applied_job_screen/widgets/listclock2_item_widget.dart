import '../controller/applied_job_controller.dart';
import '../models/listclock2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:job_seeking_app/core/app_export.dart';
import 'package:job_seeking_app/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listclock2ItemWidget extends StatelessWidget {
  Listclock2ItemWidget(this.listclock2ItemModelObj);

  Listclock2ItemModel listclock2ItemModelObj;

  var controller = Get.find<AppliedJobController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 54,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              variant: IconButtonVariant.FillTealA70065,
              shape: IconButtonShape.CircleBorder24,
              padding: IconButtonPadding.PaddingAll12,
              child: CustomImageView(
                svgPath: ImageConstant.imgClock,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Obx(
                () => Text(
                  listclock2ItemModelObj.salaryTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style:
                      AppStyle.txtPlusJakartaSansMedium12Bluegray300.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.06,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Obx(
                () => Text(
                  listclock2ItemModelObj.priceTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlusJakartaSansSemiBold14Gray900.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.07,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
