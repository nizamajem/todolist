import 'package:get/get.dart';
import 'package:week_1/pages/features/dashboard_screen.dart';
import 'package:week_1/pages/features/history_screen.dart';
import 'package:week_1/pages/features/profile_screen.dart';
import 'package:week_1/pages/features/task_screen.dart';
import '../pages/login_page.dart';

class AppPages {
  static final routes = [
    GetPage(name: '/', page: () => LoginPage()),
    GetPage(name: '/dashboard', page: () => DashboardScreen()),
    GetPage(name: '/task', page: () => TaskScreen()),
    GetPage(name: '/history', page: () => HistoryScreen()),
    GetPage(name: '/profile', page: () => ProfileScreen()),
  ];
}
