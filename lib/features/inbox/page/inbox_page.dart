import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/enums/inbox_enum.dart';
import 'package:real_estate/features/home/widgets/home_button.dart';
import 'package:real_estate/features/inbox/controller/inbox_controller.dart';
import 'package:real_estate/features/inbox/widgets/chat_widget.dart';

class InboxPage extends GetView<InboxController> {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InboxController());
    return Scaffold(
        appBar: AppBar(
          title: Text('Inbox'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeButton(
                      isClicked: controller.currentScreen.value == InboxEnum.all,
                      isRight: true,
                      onPressed: () {
                        controller.changeCurrentScreenStatus(InboxEnum.all);
                      },
                      text: "All",
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    HomeButton(
                      isClicked:
                          controller.currentScreen.value == InboxEnum.unread,
                      text: "Unread",
                      isRight: false,
                      onPressed: () {
                        controller.changeCurrentScreenStatus(InboxEnum.unread);
                      },
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: REdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recent',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kPrimaryGreyColor,
                            fontSize: 22.sp,
                          ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          return ChatWidget();
                        })
                  ],
                ),
              ),
              Padding(
                padding: REdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Last Month',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.kPrimaryGreyColor,
                            fontSize: 22.sp,
                          ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, i) {
                          return ChatWidget();
                        })
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
