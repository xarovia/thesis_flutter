// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddingSubjects extends StatefulWidget {
  const AddingSubjects({super.key});

  @override
  State<AddingSubjects> createState() => _AddingSubjectsState();
}

class _AddingSubjectsState extends State<AddingSubjects> {
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
            "Subject Code:",
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
            "Subject Name:",
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
              hintText: "Ex: IT 3357",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Units:",
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
              hintText: "Enter Units",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Department:",
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
              hintText: "CS",
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
