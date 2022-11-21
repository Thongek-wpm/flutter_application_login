// ignore_for_file: unused_import, non_constant_identifier_names, dead_code
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';

import 'package:flutter_application_foods/src/conroller.dart';

class RegisterEmailUi extends StatefulWidget {
  const RegisterEmailUi({super.key});

  @override
  State<RegisterEmailUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterEmailUi> {
  var emailReexprssion;
  var editEmailCon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Register With E-Mail',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 5,
            ),
            child: TextFormField(
              autocorrect: true,
              controller: editEmailCon,
              keyboardType: TextInputType.emailAddress,
              validator: (String? Value) {
                if (Value!.isEmpty) {
                  return 'enter E-mail';
                } else {
                  (!emailReexprssion.hasMatch(Value));
                  return ('E-mail is Incorrect');
                }
                return null;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'E-mail',
                hintText: 'Enter E-mail for System will mail to comfirm',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 5,
            ),
            child: TextFormField(
              obscureText: true,
              autocorrect: true,
              controller: editEmailCon,
              keyboardType: TextInputType.emailAddress,
              validator: (String? Value) {
                if (Value!.isEmpty) {
                  return 'enter Password';
                } else {
                  return ('Password is Incorrect');
                }
                return null;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.verified),
                labelText: 'Password',
                hintText: 'Enter Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 60,
              right: 60,
              bottom: 5,
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Done'),
            ),
          )
        ],
      ),
    );
  }
}
