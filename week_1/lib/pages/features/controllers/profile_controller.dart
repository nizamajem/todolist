import 'package:get/get.dart';

class ProfileController extends GetxController {
  var name = "John Doe".obs;
  var school = "Universitas Teknologi".obs;
  var points = 0.obs;

  void addPoints() {
    points.value += 50; // Tambah 50 poin setiap tugas selesai
  }

  void resetPoints() {
    points.value = 0; // Reset poin
  }
}
