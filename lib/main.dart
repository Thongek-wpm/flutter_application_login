import 'package:flutter/material.dart';
import 'package:flutter_application_foods/screens/forgot_ui.dart';
import 'package:flutter_application_foods/screens/login_ui.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginUi(),
    ),
  );
}
