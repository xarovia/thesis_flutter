// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/DepartmentMaking.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DepartmentContents extends StatefulWidget {
  const DepartmentContents({super.key});

  @override
  State<DepartmentContents> createState() => _DepartmentContentsState();
}

class _DepartmentContentsState extends State<DepartmentContents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xFF2E3192)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "CS",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "Computer Science",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF)),
              )
            ],
          ),
          IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.arrowRight),
              color: Color(0xFFFFFFFF),
              iconSize: 15,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DepartmentMakingScreen()));
              })
        ],
      ),
    );
  }
}
