import 'package:flutter/material.dart';
import 'package:itproject/Login%20Logout/login_page.dart';
import 'package:itproject/Login%20Logout/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;
  void toggleScreens(){
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LogInPage(showRegisterPage:toggleScreens);
    } else {
      return RegisterPage(showLoginPage:toggleScreens);
    }
  }
}
