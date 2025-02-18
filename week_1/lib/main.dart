import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_1/pages/features/controllers/profile_controller.dart';
import 'routes/app_pages.dart';


void main() {
  Get.put(ProfileController()); // Registrasi ProfileController

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: AppPages.routes,
    );
  }
}
