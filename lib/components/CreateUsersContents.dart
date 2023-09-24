// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';

class CreateUserScreen extends StatefulWidget {
  const CreateUserScreen({Key? key}) : super(key: key);

  @override
  State<CreateUserScreen> createState() => _CreateUserScreenState();
}

class _CreateUserScreenState extends State<CreateUserScreen> {
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

  String _selectedRole = 'Student'; // Default role
  bool _isEditing = false;

  // List of suffix choices
  List<String> _suffixChoices = [
    'Sr. (Senior)',
    'Jr. (Junior)',
    'III (the Third)',
    'IV'
  ];

  // List of gender choices
  List<String> _genderChoices = ['Female', 'Male'];

  @override
  void initState() {
    super.initState();
    // Set initial values for the fields
    _firstNameController.text = "Quiza";
    _middleNameController.text = "Cariaga";
    _lastNameController.text = "Balasa";
    _suffixController.text = "Sr. (Senior)"; // Default suffix
    _sexController.text = "Female"; // Default gender
    _birthdayController.text = "01/01/2000";
    _courseController.text = "Information Technology";
    _yearLevelController.text = "4th Year";
    _sectionController.text = "A";
    _homeAddressController.text = "123 Main St, City";
    _emailAddressController.text = "quiza.balasa@gmail.com";
    _contactNumberController.text = "09760240401";
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

          buildDropdownButton(
              'Role', _selectedRole, ['Student', 'Admin', 'Professor']),
          buildTextField("First Name", _firstNameController),
          buildTextField("Middle Name", _middleNameController),
          buildTextField("Last Name", _lastNameController),
          buildDropdownButton('Suffix', _suffixController.text, _suffixChoices),
          buildDropdownButton('Gender', _sexController.text, _genderChoices),
          buildTextField("Birthday", _birthdayController),
          buildTextField("Course", _courseController),
          buildTextField("Year Level", _yearLevelController),
          buildTextField("Section", _sectionController),
          buildTextField("Home Address", _homeAddressController),
          buildTextField("Email Address", _emailAddressController),
          buildTextField("Contact Number", _contactNumberController),
        ],
      ),
    );
  }

  Widget buildDropdownButton(
      String label, String selectedValue, List<String> items) {
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
        DropdownButton<String>(
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              if (label == 'Suffix') {
                _suffixController.text = newValue!;
              } else if (label == 'Gender') {
                _sexController.text = newValue!;
              } else if (label == 'Role') {
                _selectedRole = newValue!;
              }
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ],
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
            width: _isEditing ? 250 : 500,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5), // Circular background
              color: Colors.grey, // Grey background color
            ),
            child: _isEditing
                ? TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 5.0),
                      border: InputBorder.none,
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
