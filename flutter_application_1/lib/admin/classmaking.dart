import 'package:flutter/material.dart';

class ClassMaking extends StatefulWidget {
  const ClassMaking({super.key});

  @override
  State<ClassMaking> createState() => _ClassMakingState();
}

class _ClassMakingState extends State<ClassMaking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: Center(child: Text("hi")),
    );
  }
}
