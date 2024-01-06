import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart'as http;

import 'package:api/task_signup.dart';
import 'package:api/taskapp_home_page.dart';
// import 'package:firebase_project/common_widget.dart';
// import 'package:firebase_project/task_signup.dart';
// import 'package:firebase_project/taskapp_home_page.dart';
import 'package:flutter/material.dart';

import 'common.dart';

class TaskLoginPage extends StatefulWidget {
  const TaskLoginPage({super.key});

  @override
  State<TaskLoginPage> createState() => _TaskLoginPageState();
}

class _TaskLoginPageState extends State<TaskLoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Future.delayed(Duration(seconds: 3), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => TaskLoginPage(),
  //       ),
  //     );
  //   });
  // }

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
                    margin: EdgeInsets.only(top: 80, left: 15,bottom: 130),
                    child: Text(
                      "Login In",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  ccommonUserInputWidget(
                      controller: userController,
                      title: "Username",
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter Username";
                        }
                        return null;
                      }),
                  ccommonUserInputWidget(
                      controller: passController,
                      title: "Password",
                      validator: (v) {
                        if (v!.isEmpty) {
                          return "Please enter password";
                        }
                        return null;
                      }),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        print("forgrt password");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Forget password?",
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (formkey.currentState!.validate()) {
                        print(
                            "-=-=--= emailController  ${emailController.text}");
                        print("-=-=--= passController  ${passController.text}");
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePageTask(),
                          ),
                              (route) => true,
                        );
                      }
                      log("tap sign in");
                    },
                    child: Container(
                      // margin: EdgeInsets.only(left: 15, right: 15, top: 50),
                      padding: EdgeInsets.only(
                          left: 170, right: 170, top: 18, bottom: 18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff824D4D),
                      ),
                      child: Text(
                        "Login In",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 130),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Or Sing In With",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageTask(),
                        ),
                            (route) => true,
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
                      padding: EdgeInsets.only(
                        top: 16,
                        left: 15,
                        right: 15,
                        bottom: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff824D4D),
                      ),
                      child: Row(
                        children: [
                          Image.asset(".idea/assets/image/google.png"),
                          Expanded(
                            child: Center(
                              child: Text(
                                "Continue with Google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreatAccountPage(),
                          ),
                              (route) => false);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "New Here?",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "Creat Account",
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
        ),
      ),
    );
  }

  void loginAPI (){
    http.Response response = http.post(url)
  }

}

