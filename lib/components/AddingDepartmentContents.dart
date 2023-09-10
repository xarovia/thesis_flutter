// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddingDepartment extends StatefulWidget {
  const AddingDepartment({super.key});

  @override
  State<AddingDepartment> createState() => _AddingDepartmentState();
}

class _AddingDepartmentState extends State<AddingDepartment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFFFFFFFF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Professor Name:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3C454F),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "Ex: Capstone 2",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Department Name:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3C454F),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "Ex: CS Department",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
