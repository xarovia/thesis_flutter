import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ClassSchedBox extends StatelessWidget {
  const ClassSchedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.red),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("4-120"), Text("8:20 AM - 10:50 AM")],
          ),
          IconButton(
              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
              icon: FaIcon(FontAwesomeIcons.arrowRight),
              onPressed: () {})
        ],
      ),
    );
  }
}
