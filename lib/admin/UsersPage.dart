// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/BottomNavBar.dart';
import 'package:flutter_application_1/components/CustomSearchBar.dart';
import 'package:flutter_application_1/components/UserContents.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({super.key});

  @override
  State<UsersPage> createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2E3192),
        foregroundColor: Color(0xFFFFFFFF),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Users'),
          ],
        ),
        centerTitle: true,
      ),
      body: UsersPageScreen(),
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

class UsersPageScreen extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<UsersPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          (CustomSearchBar()),
          Expanded(
            child: ListView(children: <Widget>[
              EditUserContent(),
              EditUserContent(),
            ]),
          ),
        ],
      ),
    );
  }
}
