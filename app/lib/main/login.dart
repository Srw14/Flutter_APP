import 'package:flutter/material.dart';
import 'package:flutter_project_application_1/main/register.dart';
import 'package:flutter_project_application_1/main/home.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF111828),
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      height: 40.0,
                      width: 40.0,
                    ),
                    SizedBox(height: 35),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 350,
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                            gapPadding: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18))),
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return homescreen();
                          }));
                        },
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 13),
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return registerscreen();
                                }));
                              },
                              child: const Text(
                                'Create new account',
                                style: TextStyle(
                                  color: Color(0xFFA29F9F),
                                ),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
