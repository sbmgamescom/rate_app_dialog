import 'package:flutter/material.dart';
import 'package:rate_app_dialog/rate_app_dialog.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppRating.instance.initialize(
    config: AppRatingConfig(
      googlePlayLink: "googlePlayLink",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rate us Example',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}
