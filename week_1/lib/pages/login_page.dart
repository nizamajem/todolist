import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:week_1/pages/features/dashboard_screen.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue.shade900, Colors.blueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 8,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Username Field
                      TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),

                      // Password Field
                      TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      // Login Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            String username = usernameController.text;
                            String password = passwordController.text;

                            if (username == "admin" && password == "1234") {
                              Get.to(() => DashboardScreen());
                            } else {
                              Get.snackbar("Error", "Username atau Password salah",
                                  backgroundColor: Colors.red,
                                  colorText: Colors.white);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                            padding: EdgeInsets.symmetric(vertical: 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
