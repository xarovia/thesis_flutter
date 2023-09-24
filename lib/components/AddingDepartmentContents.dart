import 'package:flutter/material.dart';

class AddingDepartment extends StatefulWidget {
  @override
  _AddingDepartmentState createState() => _AddingDepartmentState();
}

class _AddingDepartmentState extends State<AddingDepartment> {
  String? selectedProfessor; // Nullable to handle initial null value

  List<String> professorNames = [
    'Paasa',
    'Ogs',
    'Canale',
    'Dodong',
    // Add more prof
  ];

  List<String> filteredProfessorNames = []; // To store filtered names

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProfessorNames = professorNames; // Initialize filtered list
    searchController.addListener(filterProfessors);
  }

  void filterProfessors() {
    final query = searchController.text.toLowerCase();
    setState(() {
      filteredProfessorNames = professorNames
          .where((name) => name.toLowerCase().contains(query))
          .toList();
    });
  }

  Future<void> _showProfessorSelectionModal() async {
    final selected = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true, // Make the modal BIG
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.8, // Adjust the height op de modal
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    labelText: 'Search Professors',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: filteredProfessorNames.length,
                  itemBuilder: (context, index) {
                    final professorName = filteredProfessorNames[index];
                    return ListTile(
                      title: Text(
                        professorName,
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      subtitle: Text(
                        "IT Department",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF000000),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop(
                            professorName); // Return the selected professor name
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );

    // Update the selected professor
    if (selected != null) {
      setState(() {
        selectedProfessor = selected;
      });
    }
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
          Text(
            "Professor Name:",
            style: TextStyle(
              fontSize: 15,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              color: Color(0xFF3C454F),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              _showProfessorSelectionModal();
            },
            child: Text(
              selectedProfessor != null
                  ? 'Selected Professor: $selectedProfessor'
                  : 'Choose Professor',
              style: TextStyle(color: Colors.blue),
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
        ],
      ),
    );
  }
}
