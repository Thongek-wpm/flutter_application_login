// ignore_for_file: avoid_unnecessary_containers
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_foods/screens/login_ui.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter_application_foods/model/profile.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(
    email: '',
    password: '',
  );
  final Future<FirebaseApp> firebase = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          'Register',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Register Now!!",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
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
                      labelText: 'Number email',
                      hintText: 'Enter Number email',
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            try {
                              await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                email: profile.email,
                                password: profile.password,
                              )
                                  .then((value) {
                                formKey.currentState!.reset();
                                Fluttertoast.showToast(
                                  msg: 'Your Registered',
                                  gravity: ToastGravity.TOP,
                                );
                                // ignore: use_build_context_synchronously
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(builder: (context) {
                                    return const LoginUi();
                                  }),
                                );
                              });
                            } on FirebaseAuthException catch (e) {
                              // ignore: avoid_print
                              print(e.message);
                              // ignore: avoid_print
                              print(e.code);
                              // ignore: unused_local_variable
                              String? message;
                              if (e.message == 'email-already-in-use') {
                                message =
                                    "This email address is already, Sorry should you change e-mail !!";
                              } else if (e.code == 'weak-password') {
                                message =
                                    'Sorry your password should be at least 6 characters';
                              } else {
                                message = e.message;
                              }
                              Fluttertoast.showToast(
                                msg: message!,
                                gravity: ToastGravity.CENTER,
                              );
                            }
                          }
                          // ignore: empty_statements
                          ;
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
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
