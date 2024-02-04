import 'package:flutter/material.dart';
import 'package:rate_app_dialog/rate_app_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            AppRating.instance.show(context);
          },
          child: const Text('show rate us dialog'),
        ),
      ),
    );
  }
}
