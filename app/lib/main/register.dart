import 'package:flutter/material.dart';
import 'package:flutter_project_application_1/main/home.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({super.key});

  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        iconTheme: IconThemeData(
          color: Color(0xFFF111828),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF111828)),
                    ),
                    Text(
                      "Create a new account",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFF111828)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "E-mail",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "Password confirm",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "First name",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Color(0xFFF111828),
                        ),
                        decoration: InputDecoration(
                          hintText: "Last name",
                          hintStyle: TextStyle(
                            color: Color(0xFFF111828),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFFF111828),
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      height: 35,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF111828),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return homescreen();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
