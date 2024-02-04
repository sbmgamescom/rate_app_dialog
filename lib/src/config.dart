import 'package:flutter/material.dart';

class AppRatingConfig {
  final String googlePlayLink;
  final TextStyle titleStyle;
  AppRatingConfig({
    required this.googlePlayLink,
    this.titleStyle = const TextStyle(
      fontSize: 19,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  });
}
