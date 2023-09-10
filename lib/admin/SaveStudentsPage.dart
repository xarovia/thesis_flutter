// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
//katong sa classmakingpage na magsave sa class page magadd og students.
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/AddStudentsContents.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SaveStudentsPage extends StatefulWidget {
  const SaveStudentsPage({super.key});

  @override
  State<SaveStudentsPage> createState() => _SaveStudentsPageState();
}

class _SaveStudentsPageState extends State<SaveStudentsPage> {
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
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => const ClassMaking()));
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
            Text('Students'),
          ],
        ),
        centerTitle: true,
      ),
      body: SaveStudentsScreen(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF3CC16B),
        shape: const CircleBorder(),
        elevation: 4.0,
        child: const Icon(
          FontAwesomeIcons.plus,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          // Handle FAB press
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SaveStudentsScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<SaveStudentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              AddingStudents(),
              AddingStudents(),
            ]),
          ),
        ],
      ),
    );
  }
}
