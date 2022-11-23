// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_import, prefer_typing_uninitialized_variables
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_foods/model/profile.dart';
import 'package:flutter_application_foods/screens/forgot_ui.dart';
import 'package:flutter_application_foods/screens/register_ui.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_application_foods/model/conroller.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(
    email: '',
    password: '',
  );
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "LOGIN ACCOUNT",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Text(
              'E-mail',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.1, left: 30, right: 40),
            child: TextFormField(
              validator: MultiValidator(
                [
                  RequiredValidator(
                    errorText: 'you enter your E-mail',
                  ),
                  EmailValidator(
                    errorText: 'Your email format is invalid.',
                  )
                ],
              ),
              onSaved: (String? email) {
                profile.email = email!;
              },
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Number email',
                hintText: 'Enter Number email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 5, left: 30, right: 30),
            child: Text(
              'Password',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.1, left: 30, right: 40),
            child: TextFormField(
              validator: RequiredValidator(
                errorText: 'you enter password',
              ),
              onSaved: (String? password) {
                profile.password = password!;
              },
              obscureText: true,
              decoration: const InputDecoration(
                icon: Icon(Icons.key),
                labelText: 'Passwords',
                hintText: 'Enter Passwords',
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: ElevatedButton(
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      try {} on FirebaseAuthException catch (e) {
                        Fluttertoast.showToast(
                          msg: e.message!,
                          gravity: ToastGravity.CENTER,
                        );
                      }
                    }
                    // ignore: empty_statements
                    ;
                  },
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "If you not have account",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterUi(),
                    ),
                  );
                },
                child: Text(
                  "Register Here!!",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "If you foget you are password click",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotUi(),
                    ),
                  );
                },
                child: Text(
                  "Here",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.google),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Login with Google"),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Text("Login with Number Phone"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
