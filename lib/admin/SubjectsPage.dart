// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables
//main subjects
import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/SubjectsMaking.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:flutter_application_1/components/SubjectsContentBox.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubjectPage extends StatefulWidget {
  const SubjectPage({super.key});

  @override
  State<SubjectPage> createState() => _SubjectPageState();
}

class _SubjectPageState extends State<SubjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Subjects'),
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
      ),
      body: SubjectPageScreen(),
      floatingActionButton: FloatingActionButton(
        //floating button call
        backgroundColor: Color(0xFF3CC16B),
        shape: CircleBorder(),
        elevation: 4.0,
        child: Icon(
          FontAwesomeIcons.pen,
          color: Colors.white,
          size: 20,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubjectsMakingPage()),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class SubjectPageScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<SubjectPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              SubjectContents(),
              const SizedBox(height: 10)
            ]),
          ),
        ],
      ),
    );
  }
}
