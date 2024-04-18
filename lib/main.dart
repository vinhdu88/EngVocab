// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:itproject/Login%20Logout/main_login_pag.dart';
import 'package:itproject/Theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),

    // ChangeNotifierProvider(
    //   create: (context) => ThemeProvider(),
    //   child: const MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLoginPage(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
