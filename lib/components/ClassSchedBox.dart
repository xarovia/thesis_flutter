// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/admin/classmaking.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassSchedBox extends StatelessWidget {
  const ClassSchedBox({super.key});

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
                "4-120",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFFFFFFF)),
              ),
              Text(
                "8:20 AM - 10:50 AM",
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
                        builder: (context) => const ClassMaking()));
              })
        ],
      ),
    );
  }
}
