// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddingStudents extends StatefulWidget {
  const AddingStudents({super.key});

  @override
  State<AddingStudents> createState() => _AddingStudentsState();
}

class _AddingStudentsState extends State<AddingStudents> {
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
            padding: EdgeInsets.only(left: 70), // Adjust the spacing as needed
            child: IconButton(
              icon: FaIcon(FontAwesomeIcons.circlePlus),
              color: Color(0xFF3CC16B),
              iconSize: 20,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
