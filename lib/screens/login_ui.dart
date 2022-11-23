import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_foods/model/profile.dart';
import 'package:flutter_application_foods/screens/home_ui.dart';
import 'package:flutter_application_foods/screens/register_ui.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "LOGIN ACCOUNT",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Text(
                    'E-mail',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
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
                      labelText: 'E-mail',
                      hintText: 'Enter email',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Text(
                    'Password',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            try {
                              await FirebaseAuth.instance
                                  .signInWithEmailAndPassword(
                                email: profile.email,
                                password: profile.password,
                              )
                                  .then((value) {
                                formKey.currentState!.reset();
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const HomeUi();
                                }));
                              });
                            } on FirebaseAuthException catch (e) {
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
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: ElevatedButton(
                        child: const Text('REGISTER'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterUi(),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
