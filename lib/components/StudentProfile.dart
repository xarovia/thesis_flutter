// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class StudentProfileScreen extends StatefulWidget {
  const StudentProfileScreen({super.key});

  @override
  State<StudentProfileScreen> createState() => _StudentProfileScreenState();
}

class _StudentProfileScreenState extends State<StudentProfileScreen> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _middleNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _suffixController = TextEditingController();
  TextEditingController _sexController = TextEditingController();
  TextEditingController _birthdayController = TextEditingController();
  TextEditingController _courseController = TextEditingController();
  TextEditingController _yearLevelController = TextEditingController();
  TextEditingController _sectionController = TextEditingController();
  TextEditingController _homeAddressController = TextEditingController();
  TextEditingController _emailAddressController = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();

  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    // Set initial values for the fields
    _firstNameController.text = "John";
    _middleNameController.text = "Doe";
    _lastNameController.text = "Smith";
    _suffixController.text = "Jr";
    _sexController.text = "Male";
    _birthdayController.text = "01/01/2000";
    _courseController.text = "Computer Science";
    _yearLevelController.text = "4th Year";
    _sectionController.text = "A";
    _homeAddressController.text = "123 Main St, City";
    _emailAddressController.text = "johndoe@email.com";
    _contactNumberController.text = "123-456-7890";
  }

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
          // Empty Expanded widget to center the CircleAvatar horizontally
          Row(
            children: [
              Expanded(child: Container()),
              // Image asset above the profile
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  'assets/me.png', // Replace with your image asset
                ),
              ),
              Expanded(child: Container()),
            ],
          ),

          SizedBox(height: 20), // Space between the image and text

          // Text or TextFormField for First Name
          buildTextField("First Name", _firstNameController),

          // Text or TextFormField for Middle Name
          buildTextField("Middle Name", _middleNameController),

          // Text or TextFormField for Last Name
          buildTextField("Last Name", _lastNameController),

          // Text or TextFormField for Suffix
          buildTextField("Suffix", _suffixController),

          // Text or TextFormField for Sex
          buildTextField("Sex", _sexController),

          // Text or TextFormField for Birthday
          buildTextField("Birthday", _birthdayController),

          // Text or TextFormField for Course
          buildTextField("Course", _courseController),

          // Text or TextFormField for Year Level
          buildTextField("Year Level", _yearLevelController),

          // Text or TextFormField for Section
          buildTextField("Section", _sectionController),

          // Text or TextFormField for Home Address
          buildTextField("Home Address", _homeAddressController),

          // Text or TextFormField for Email Address
          buildTextField("Email Address", _emailAddressController),

          // Text or TextFormField for Contact Number
          buildTextField("Contact Number", _contactNumberController),
        ],
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w500,
            color: Color(0xFF3C454F),
          ),
        ),
        SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              _isEditing = true;
            });
          },
          child: Container(
            width: _isEditing ? 250 : 500, // Adjust the width as needed
            height: 50, // Adjust the height as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), // Circular background
              color: Colors.grey, // Grey background color
            ),
            child: _isEditing
                ? TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5.0),
                      border: InputBorder.none, // Remove border
                    ),
                  )
                : Center(
                    child: Text(
                      controller.text,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // Dispose of all controllers
    _firstNameController.dispose();
    _middleNameController.dispose();
    _lastNameController.dispose();
    _suffixController.dispose();
    _sexController.dispose();
    _birthdayController.dispose();
    _courseController.dispose();
    _yearLevelController.dispose();
    _sectionController.dispose();
    _homeAddressController.dispose();
    _emailAddressController.dispose();
    _contactNumberController.dispose();
    super.dispose();
  }
}
