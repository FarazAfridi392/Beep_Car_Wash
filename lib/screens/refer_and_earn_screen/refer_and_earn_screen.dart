import 'package:beep_car_wash/commons/app_colors.dart';
import 'package:beep_car_wash/commons/image_path.dart';
import 'package:beep_car_wash/commons/utils.dart';
import 'package:beep_car_wash/screens/common_controller.dart';
import 'package:beep_car_wash/screens/refer_and_earn_screen/refer_and_earn_controller.dart';
import 'package:beep_car_wash/screens/terms_of_service_screen/terms_of_service_binding.dart';
import 'package:beep_car_wash/screens/terms_of_service_screen/terms_of_service_screen.dart';
import 'package:beep_car_wash/widgets/custom_appbar.dart';
import 'package:beep_car_wash/widgets/custom_button.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

class ReferAndEarnScreen extends GetView<ReferAndEarnController> {
  const ReferAndEarnScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Stack(
        children: [
          TabBarView(
            children: [
              referOperatorTab(),
              inviteFriendsTab(),
            ],
          ),
          CustomAppBar(
            title: "Referral",
            height: MediaQuery.of(context).padding.top +
                AppBar().preferredSize.height +
                4.5.h,
            bottonChild: TabBar(
              labelStyle: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
              unselectedLabelColor: AppColors.lightTextColor,
              labelColor: AppColors.appColorText,
              indicatorColor: AppColors.appColorText,
              tabs: const [
                Tab(text: "Refer Operator"),
                Tab(text: "Invite Friends"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget referOperatorTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 1.6.h, horizontal: 6.w).copyWith(
          top: MediaQuery.of(Get.context!).padding.top +
              AppBar().preferredSize.height +
              3.6.h),
      children: [
        Image.asset(
          ImagePath.referOperatorImage,
          height: 50.w,
        ),
        SizedBox(height: 3.h),
        Text(
          "Spread The Wealth",
          style: TextStyle(
            color: AppColors.darkTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 1.6.h),
        Text(
          "Share your personal code with potential operators. After they get their first beep wash booking, you both earn a \$100 each!",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.lightTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 10.6.sp,
          ),
        ),
        SizedBox(height: 3.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "1",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invite operators by sharing your code",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "They sign up using your code below into the app",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.2.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "2",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Set up their beep operation",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "Once they set up their beep operation and receive their first beep booking you both earn",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.2.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "3",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You both earn \$100!",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "Your \$100 will be added to your earnings and be  available for withdrawal immediately",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.2.h),
        DottedBorder(
            padding: EdgeInsets.only(
              top: 1.h,
            ),
            dashPattern: const [2, 2],
            color: Colors.black,
            strokeWidth: 2,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Get.find<CommonController>()
                        .userDataModel
                        .referralCode
                        .toString(),
                    style: TextStyle(
                      color: AppColors.appColorText,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                              text: Get.find<CommonController>()
                                  .userDataModel
                                  .referralCode
                                  .toString(),
                            )).then((value) {
                              Utils utils = Utils(); //only if ->
                              utils.showSnackBar(
                                  context: Get.context!,
                                  message: "Code Copied");
                            });
                          },
                          icon:
                              Icon(Icons.copy, color: AppColors.appColorText)),
                      Text(
                        "Tap to copy code.",
                        style: TextStyle(
                          color: AppColors.appColorText,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.6.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        SizedBox(height: 2.2.h),
        CustomButton(
          onPressed: () {
            Share.share(
                'Here your refer code form Beep, Use this for your next beep payment and you will receive wash money.\nCODE: ${Get.find<CommonController>().userDataModel.referralCode.toString()}');
            // Share.share(Get.find<CommonController>().userDataModel.referralCode.toString());
          },
          text: "Invite Operator",
        ),
        SizedBox(height: 2.2.h),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Get.to(() => const TermsOfServiceScreen(),
                  binding: TermsOfConditionBindings());
            },
            child: Text(
              "Terms apply",
              style: TextStyle(
                color: AppColors.appColorText,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(Get.context!).padding.bottom),
      ],
    );
  }

  Widget inviteFriendsTab() {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 1.6.h, horizontal: 6.w).copyWith(
          top: MediaQuery.of(Get.context!).padding.top +
              AppBar().preferredSize.height +
              8.h),
      children: [
        Image.asset(
          ImagePath.inviteFriendsImage,
          width: 45.w,
          height: 45.w,
          fit: BoxFit.fitHeight,
        ),
        SizedBox(height: 3.h),
        Text(
          "Spread The Wealth",
          style: TextStyle(
            color: AppColors.darkTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        SizedBox(height: 1.6.h),
        Text(
          "Share your personal code with your friends. After they get their first beep wash, you both earn a free wash",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.lightTextColor,
            fontWeight: FontWeight.w600,
            fontSize: 10.6.sp,
          ),
        ),
        SizedBox(height: 3.2.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "1",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Invite friends by sharing your code",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "They use your code below on their first wash",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.4.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "2",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Both earn a free wash",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "You and your friend both enjoy a free beep wash on your next wash",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.4.h),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 4.h,
              width: 4.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.lightAppColor,
              ),
              child: Text(
                "3",
                style: TextStyle(
                  color: AppColors.appColorText,
                  fontWeight: FontWeight.bold,
                  fontSize: 11.sp,
                ),
              ),
            ),
            SizedBox(width: 2.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy Beep with your friends and love ones",
                    style: TextStyle(
                      color: AppColors.darkTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 0.4.h),
                  Text(
                    "The free wash will be automatically applied on your next wash",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: AppColors.lightTextColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 10.6.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 2.2.h),
        DottedBorder(
            padding: EdgeInsets.only(
              top: 1.h,
            ),
            dashPattern: const [2, 2],
            color: Colors.black,
            strokeWidth: 2,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    Get.find<CommonController>()
                        .userDataModel
                        .referralCode
                        .toString(),
                    style: TextStyle(
                      color: AppColors.appColorText,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Clipboard.setData(ClipboardData(
                              text: Get.find<CommonController>()
                                  .userDataModel
                                  .referralCode
                                  .toString(),
                            )).then((value) {
                              Utils utils = Utils(); //only if ->
                              utils.showSnackBar(
                                  context: Get.context!,
                                  message: "Code Copied");
                            });
                          },
                          icon:
                              Icon(Icons.copy, color: AppColors.appColorText)),
                      Text(
                        "Tap to copy code.",
                        style: TextStyle(
                          color: AppColors.appColorText,
                          fontWeight: FontWeight.w600,
                          fontSize: 10.6.sp,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        SizedBox(height: 2.2.h),
        CustomButton(
          onPressed: () {
            Share.share(
                'Here your refer code form Beep, Use this for your next beep payment and you will receive wash money.\nCODE: ${Get.find<CommonController>().userDataModel.referralCode.toString()}');
            // Share.share(Get.find<CommonController>().userDataModel.referralCode.toString());
          },
          text: "Invite Friend",
        ),
        SizedBox(height: 2.2.h),
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              Get.to(() => const TermsOfServiceScreen(),
                  binding: TermsOfConditionBindings());
            },
            child: Text(
              "Terms apply",
              style: TextStyle(
                color: AppColors.appColorText,
                fontWeight: FontWeight.bold,
                fontSize: 12.sp,
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(Get.context!).padding.bottom),
      ],
    );
  }
}
