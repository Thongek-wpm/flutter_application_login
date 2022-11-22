// ignore_for_file: avoid_unnecessary_containers, avoid_print, empty_statements

import 'package:flutter/material.dart';
import 'package:flutter_application_foods/model/profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  final formKey = GlobalKey<FormState>();
  Profile profile = Profile(
    email: '',
    name: '',
    password: '',
    user: '',
    phone: '',
  );

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
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Text(
                    'Name',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                  child: TextFormField(
                    validator: RequiredValidator(
                      errorText: 'you enter you name',
                    ),
                    onSaved: (String? name) {
                      profile.name = name!;
                    },
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Name',
                      hintText: 'Enter Name',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Text(
                    'Username',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                  child: TextFormField(
                    validator: RequiredValidator(
                      errorText: 'you enter your uesr',
                    ),
                    onSaved: (String? user) {
                      profile.user = user!;
                    },
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Username',
                      hintText: 'Enter Username',
                    ),
                  ),
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
                const SizedBox(
                  height: 10,
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
                const Padding(
                  padding: EdgeInsets.only(top: 5, left: 15, right: 15),
                  child: Text(
                    'Number phone',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.1, left: 15, right: 15),
                  child: TextFormField(
                    validator: RequiredValidator(
                      errorText: 'you enter your number phone',
                    ),
                    onSaved: (String? phone) {
                      profile.phone = phone!;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.phone),
                      labelText: 'Number Phone',
                      hintText: 'Enter Number Phone',
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
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                            print(
                              'Name ${profile.user} User ${profile.user} E-mail ${profile.email} Password ${profile.password} Number ${profile.phone}',
                            );
                            formKey.currentState!.reset();
                          }
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
