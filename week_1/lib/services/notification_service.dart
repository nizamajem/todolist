import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();
  factory NotificationService() => _instance;
  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> init() async {
    const AndroidInitializationSettings androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    
    final InitializationSettings settings =
        InitializationSettings(android: androidSettings);

    await _flutterLocalNotificationsPlugin.initialize(settings);
  }

  Future<void> showNotification(String title, String body) async {
    const AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      'task_channel',
      'Task Notifications',
      channelDescription: 'Notifikasi untuk tugas',
      importance: Importance.high,
      priority: Priority.high,
    );

    const NotificationDetails notificationDetails =
        NotificationDetails(android: androidDetails);

    await _flutterLocalNotificationsPlugin.show(
      0, // ID notifikasi
      title,
      body,
      notificationDetails,
    );
  }
}
