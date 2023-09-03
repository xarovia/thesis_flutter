// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/AdminStudentProfilePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditUserContent extends StatefulWidget {
  const EditUserContent({super.key});

  @override
  State<EditUserContent> createState() => _EditUserContentState();
}

class _EditUserContentState extends State<EditUserContent> {
  bool isBanned = true; // Initial state is set to true (ban icon)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
          color: Color(0xFFFFFFFF),
          border: Border.all(color: Color(0xFF9E9FA7), width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('assets/me.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quiza Balasa",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              Text(
                "IT4B",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 39), // Adjust the spacing as needed
            child: IconButton(
              // Switched to the edit icon
              icon: FaIcon(
                FontAwesomeIcons.penToSquare,
                color: Color(0xFF3CC16B),
                size: 20,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const EditStudentProfile()));
              },
            ),
          ),
          IconButton(
            // Switched to the check if clicked
            icon: FaIcon(
              isBanned ? FontAwesomeIcons.ban : FontAwesomeIcons.check,
              color: isBanned
                  ? Color(0xFFE07272)
                  : Color(0xFF3CC16B), // Conditional color based on the state
              size: 20,
            ),
            onPressed: () {
              // Toggle the state when the icon is pressed
              setState(() {
                isBanned = !isBanned;
              });
            },
          ),
        ],
      ),
    );
  }
}
