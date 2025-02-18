import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/task_item.dart';
import 'controllers/task_controller.dart';

class TaskScreen extends StatelessWidget {
  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Obx(() => ListView.builder(
            itemCount: taskController.tasks.length,
            itemBuilder: (context, index) {
              return TaskItem(
                task: taskController.tasks[index],
                onComplete: () => taskController.completeTask(index),
              );
            },
          )),
    );
  }
}
