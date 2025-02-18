import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/task_controller.dart';


class HistoryScreen extends StatelessWidget {
  final TaskController taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Obx(() {
        if (taskController.history.isEmpty) {
          return Center(
            child: Text(
              "Belum ada tugas yang diselesaikan",
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        return ListView.builder(
          itemCount: taskController.history.length,
          itemBuilder: (context, index) {
            return Card(   
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: ListTile(
                leading: Icon(Icons.check_circle, color: Colors.green),
                title: Text(
                  taskController.history[index].title,
                  style: TextStyle(fontSize: 18, decoration: TextDecoration.lineThrough),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
