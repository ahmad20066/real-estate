import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/features/requests/widgets/sold_details_widget.dart';

class SoldRequestDetailsPage extends StatelessWidget {
  const SoldRequestDetailsPage({super.key});

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
              SoldDetailsWidget()
              //END
            ],
          ),
        ),
      ),
    );
  }
}