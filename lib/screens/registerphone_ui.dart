import 'package:flutter/material.dart';

class RegisterphoneUi extends StatefulWidget {
  const RegisterphoneUi({super.key});

  @override
  State<RegisterphoneUi> createState() => _RegisterphoneUiState();
}

class _RegisterphoneUiState extends State<RegisterphoneUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Register With Number',
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
              //controller: editEmailCon,
              keyboardType: TextInputType.emailAddress,
              validator: (String? Value) {
                if (Value!.isEmpty) {
                  return 'enter Number';
                } else {
                  //(!emailReexprssion.hasMatch(Value));
                  return ('Number is Incorrect');
                }
                return null;
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Number',
                hintText: 'Enter Number for System will mail to comfirm',
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
              //controller: editEmailCon,
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
          ),
        ],
      ),
    );
  }
}
