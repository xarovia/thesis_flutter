// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserBoxes extends StatefulWidget {
  const UserBoxes({Key? key});

  @override
  State<UserBoxes> createState() => _UserBoxesState();
}

class _UserBoxesState extends State<UserBoxes> {
  // Define an empty onPressed callback
  void onPressed() {
    // Implement your logic here
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Trigger the onPressed callback when the box is tapped
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF2E3192),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Create Admin", // Fixed the string
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowRight),
              color: Color(0xFFFFFFFF),
              iconSize: 15,
              onPressed: () {
                // Route to where you want to navigate
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditStudents(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
