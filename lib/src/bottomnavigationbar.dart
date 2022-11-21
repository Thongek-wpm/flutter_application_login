import 'package:flutter/material.dart';
import 'package:flutter_application_foods/screens/registeremail_ui.dart';
import 'package:flutter_application_foods/screens/registerphone_ui.dart';

class BNGB extends StatefulWidget {
  const BNGB({super.key});

  @override
  State<BNGB> createState() => _BNGBState();
}

class _BNGBState extends State<BNGB> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            "Register Account User",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: const TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.email),
              text: 'E-mail',
            ),
            Tab(
              icon: Icon(Icons.phone),
              text: 'Number Phone',
            ),
          ],
        ),
        body: const TabBarView(
          children: [
            RegisterEmailUi(),
            RegisterphoneUi(),
          ],
        ),
        backgroundColor: Colors.white12,
      ),
    );
  }
}
