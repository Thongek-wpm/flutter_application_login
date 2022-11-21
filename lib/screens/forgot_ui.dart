// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_foods/screens/home_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_foods/src/conroller.dart';

class ForgotUi extends StatefulWidget {
  const ForgotUi({super.key});

  @override
  State<ForgotUi> createState() => _ForgotUiState();
}

class _ForgotUiState extends State<ForgotUi> {

  // ignore: non_constant_identifier_names
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Forget your password",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              right: 40,
            ),
            child: Text(
              "You are Forget your password?",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 30,
              right: 30,
              top: 5,
            ),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'E-mail',
                hintText: 'Enter E-mail',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(40),
          )
        ],
      ),
    );
  }
}
