import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_vivah_final/screens/login/login.dart';

void main() {
  runApp(VirtualVivah());
}

class VirtualVivah extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      title: 'Virtual Vivah',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}
