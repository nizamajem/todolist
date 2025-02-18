import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/controllers/task_controller.dart';


class TaskItem extends StatelessWidget {
  final Task task;
  final VoidCallback onComplete;

  TaskItem({required this.task, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        leading: Icon(Icons.radio_button_unchecked, color: Colors.grey),
        title: Text(
          task.title,
          style: TextStyle(fontSize: 18),
        ),
        trailing: Icon(Icons.assignment, color: Colors.blue.shade900),
        onTap: () {
          _showConfirmationDialog(context, onComplete);
        },
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context, VoidCallback onConfirm) {
    Get.defaultDialog(
      title: "Konfirmasi Tugas",
      middleText: "Apakah Anda yakin ingin mengambil tugas ini?",
      backgroundColor: Colors.white,
      titleStyle: TextStyle(fontWeight: FontWeight.bold),
      middleTextStyle: TextStyle(fontSize: 16),
      barrierDismissible: false,
      radius: 10,
      actions: [
        // Tombol Batal
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.close, color: Colors.red),
              SizedBox(width: 5),
              Text("Batal", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),

        // Tombol Ambil Tugas
        ElevatedButton(
          onPressed: () {
            onConfirm();
            Get.back();
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.check, color: Colors.white),
              SizedBox(width: 5),
              Text("Ambil Tugas", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
