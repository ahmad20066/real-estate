import 'package:flutter/material.dart';
import 'package:real_estate/common/widgets/background_image.dart';
import 'package:real_estate/features/login/widgets/login_card.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGroundImage(),
          Align(alignment: AlignmentDirectional(0, 0.3), child: LogInCard())
        ],
      ),
    );
  }
}
