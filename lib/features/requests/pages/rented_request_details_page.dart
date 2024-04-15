import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/common/constants/colors.dart';
import 'package:real_estate/common/widgets/custom_button.dart';
import 'package:real_estate/features/requests/widgets/rented_details_widget.dart';
import 'package:real_estate/features/requests/widgets/request_details_widget.dart';

class RentedDetailsPage extends StatelessWidget {
  const RentedDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modern Family House'),
        centerTitle: true,
      ),
      body: Padding(
        padding: REdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //START
              RentedDetailsWidget()
              //END
            ],
          ),
        ),
      ),
    );
  }
}
