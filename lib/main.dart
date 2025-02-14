import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:social/firebase_options.dart';
import 'package:social/themes/light_mode.dart';

import 'features/auth/presentation/pages/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightMode, debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
