import 'package:get/get.dart';
import 'profile_controller.dart'; // Import ProfileController

class TaskController extends GetxController {
  var tasks = <Task>[
    Task(title: "Periksa sepeda di lokasi A"),
    Task(title: "Ganti baterai IoT di lokasi B"),
    Task(title: "Laporkan sepeda rusak di lokasi C"),
    Task(title: "Pastikan semua sepeda terisi daya"),
  ].obs;

  var history = <Task>[].obs;

  final ProfileController profileController = Get.find<ProfileController>(); // Harus dipastikan sudah diinisialisasi

  void completeTask(int index) {
    Task completedTask = tasks[index];
    tasks.removeAt(index);
    history.add(completedTask);
    profileController.addPoints(); // Tambah poin ke profil
  }

  void removeTask(int index) {
    tasks.removeAt(index);
  }
}

class Task {
  String title;
  Task({required this.title});
}
