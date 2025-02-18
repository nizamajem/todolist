
import 'package:flutter/material.dart';
import 'package:todolist/config/theme/app_theme.dart';
import 'package:todolist/screens/home_screen.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key}); // Tambahkan 'const' di sini

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: HomeScreen(),
    );
  }
}