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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Text(
                  "YOU ARE FOGRET YOUR PASSWORD?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(25),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(0.1),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Send Password'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
