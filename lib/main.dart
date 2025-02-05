import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:la8iny/firebase_options.dart';

import 'auth/presentation/view/login_page.dart';
import 'core/di/service_locator.dart';

Future<void> main() async {
  initServiceLocator();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}
