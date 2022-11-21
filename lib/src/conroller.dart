import 'package:flutter/material.dart';

class Conroller {
  final TextEditingController usernameCon = TextEditingController(text: '');
  final TextEditingController passwordCon = TextEditingController(text: '');
  final TextEditingController emailCon = TextEditingController(text: '');
  final TextEditingController editEmailCon = TextEditingController(text: '');
  final TextEditingController editPasswordCon = TextEditingController(text: '');
  final TextEditingController editMobilelCon = TextEditingController(text: '');
  final emailReexprssion =
      RegExp('[A-Z0-9a-z.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}');
}
