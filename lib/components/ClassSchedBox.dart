// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/EditStudents.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassSchedBox extends StatelessWidget {
  final String className;
  final String classTime;
  final VoidCallback onPressed;

  const ClassSchedBox({
    required this.className,
    required this.classTime,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

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
                  className,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
                Text(
                  classTime,
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF),
                  ),
                )
              ],
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.arrowRight),
              color: Color(0xFFFFFFFF),
              iconSize: 15,
              onPressed: () {
                // route kung asa ipush dff box
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
