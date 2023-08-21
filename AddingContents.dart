// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class AddingContents extends StatefulWidget {
  const AddingContents({super.key});

  @override
  State<AddingContents> createState() => _AddingContentsState();
}

class _AddingContentsState extends State<AddingContents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xFF2E3192),
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
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "Enter professor's name",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Subject:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "Enter subject",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Class Code:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "Enter class code",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Schedule:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "8:20 AM - 10:50 AM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Room Assignment:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFFFFFFFF),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 5.0),
              hintText: "8:20 AM - 10:50 AM",
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20), // Add spacing between container and button
          ElevatedButton(
            onPressed: () {
              // Implement the logic for adding participants
            },
            child: Text("Add Participants"),
          ),
        ],
      ),
    );
  }
}
