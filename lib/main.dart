// ignore_for_file: prefer_const_constructors
import 'package:flutter_application_1/admin/classpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/logo.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      height: 0.4,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 0, 0, 0)),
                ),
                Padding(padding: EdgeInsets.only(top: 5)),
                Text(
                  "Log in to Continue",
                  style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF999999)),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Enter your ateneo email address",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1.0),
                          borderRadius: BorderRadius.circular(5.5)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 5.0)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Enter your password",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF000000)),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.0),
                        borderRadius: BorderRadius.circular(5.5),
                        color: const Color(0xFFFFFFFF),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 5.0)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const <Widget>[
                        Text(
                          "Forgot password?",
                          style: TextStyle(color: Color(0xFF405C9C)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ClassPage()),
                            )
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF2E3192),
                            foregroundColor: Color(0xFFFFFFFF),
                            padding: EdgeInsets.symmetric(horizontal: 100),
                          ),
                          child: Text("Log in"),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
