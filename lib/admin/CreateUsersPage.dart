// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/userBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({Key? key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  // Define an empty onPressed callback
  void onPressed() {
    // Implement your logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Classroom'),
            backgroundColor: Color(0xFF2E3192),
            foregroundColor: Color(0xFFFFFFFF)),
        body: (UserBoxes()),
        bottomNavigationBar: BottomNavBar());
  }
}
