import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_1/pages/features/controllers/profile_controller.dart';


class ProfileScreen extends StatelessWidget {
  final ProfileController profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Avatar Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/profile.png"), // Tambahkan gambar profil di folder assets
            ),
            SizedBox(height: 10),

            // Nama Pengguna
            Obx(() => Text(
                  profileController.name.value,
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),

            // Sekolah
            Obx(() => Text(
                  profileController.school.value,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )),

            SizedBox(height: 20),

            // Poin Pengguna
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Total Poin",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Obx(() => Text(
                          "${profileController.points.value}",
                          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue.shade900),
                        )),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

           
          ],
        ),
      ),
    );
  }
}
