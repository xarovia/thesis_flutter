// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/ClassroomPage.dart';
import 'package:flutter_application_1/components/AddClassroom.dart';
import 'package:flutter_application_1/components/AddingContents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/ClassSchedBox.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
