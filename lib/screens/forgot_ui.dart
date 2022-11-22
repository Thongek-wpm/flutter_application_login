// ignore_for_file: unused_import, prefer_const_constructors, duplicate_ignore, prefer_typing_uninitialized_variables

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
  var emailCon;
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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "You are forget your password?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40, left: 40, top: 10),
            child: TextField(
              controller: emailCon,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // ignore: prefer_const_constructors
                icon: Icon(Icons.email),
                labelText: 'E-mail',
                hintText: 'Enter E-mail',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(0.5),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Okay'),
            ),
          )
        ],
      ),
    );
  }
}
