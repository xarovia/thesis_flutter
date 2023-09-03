// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//honestly nalimtan nako ni im so quirky
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/AddClassroom.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';

class ClassroomPagers extends StatefulWidget {
  const ClassroomPagers({super.key});

  @override
  State<ClassroomPagers> createState() => _ClassroomPagersState();
}

class _ClassroomPagersState extends State<ClassroomPagers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text('Classroom'),
            backgroundColor: Color(0xFF2E3192),
            foregroundColor: Color(0xFFFFFFFF)),
        body: (AddingClassroom()),
        bottomNavigationBar: BottomNavBar());
  }
}
