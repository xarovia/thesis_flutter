// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/UsersPage.dart';
import 'package:flutter_application_1/components/AddingSubjectsContents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';

class SubjectsMakingPage extends StatefulWidget {
  const SubjectsMakingPage({super.key});

  @override
  State<SubjectsMakingPage> createState() => _SubjectsMakingPageState();
}

class _SubjectsMakingPageState extends State<SubjectsMakingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const UsersPage()));
              },
              child: const Text(
                'Save',
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Subjects'),
          ],
        ),
        centerTitle: true,
      ),
      body: SubjectScreen(),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SubjectScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<SubjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              AddingSubjects(),
              const SizedBox(height: 10),
            ]),
          ),
        ],
      ),
    );
  }
}
