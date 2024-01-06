import 'package:api/task_login.dart';
// import 'package:firebase_project/common_widget.dart';
// import 'package:firebase_project/task_login.dart';
import 'package:flutter/material.dart';

import 'common.dart';

class CreatAccountPage extends StatefulWidget {
  const CreatAccountPage({super.key});

  @override
  State<CreatAccountPage> createState() => _CreatAccountPageState();
}

class _CreatAccountPageState extends State<CreatAccountPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff24253C),
          body: Form(
            key: formkey,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80, left: 15),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    ccommonUserInputWidget(
                      title: "Username",
                      controller: userController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter Username";
                        }
                        return null;
                      },
                    ),
                    ccommonUserInputWidget(
                      title: "Email",
                      controller: emailController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter Email";
                        }
                        return null;
                      },
                    ),
                    ccommonUserInputWidget(
                      title: "Password",
                      controller: passController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter Password";
                        }
                        return null;
                      },
                    ),
                    ccommonUserInputWidget(
                      title: "Confirm Password",
                      controller: confirmpassController,
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter Confirm Password";
                        }
                        return null;
                      },
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskLoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                        padding: EdgeInsets.only(
                            left: 140, right: 140, top: 18, bottom: 18),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xff824D4D),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TaskLoginPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 130),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Sign In",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
