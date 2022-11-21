// ignore_for_file: unused_import, non_constant_identifier_names, dead_code, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:flutter_application_foods/src/conroller.dart';

class RegisterEmailUi extends StatefulWidget {
  const RegisterEmailUi({super.key});

  @override
  State<RegisterEmailUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterEmailUi> {
  var emailReexprssion;
  var editEmailCon;
  var emailCon;

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
          EmailWidget(
              editEmailCon: editEmailCon, emailReexprssion: emailReexprssion),
          TextFormField(
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
          ElevatedButton(
            onPressed: () {},
            child: const Text('Done'),
          )
        ],
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  const EmailWidget({
    Key? key,
    required this.editEmailCon,
    required this.emailReexprssion,
  }) : super(key: key);

  final editEmailCon;
  final emailReexprssion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextFormField(
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
      ],
    );
  }
}
