import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_1/pages/features/profile_screen.dart';


class ProfileAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle, size: 30, color: Colors.white),
      onPressed: () {
        Get.to(() => ProfileScreen());
      },
    );
  }
}
