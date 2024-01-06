import 'package:flutter/material.dart';

class HomePageTask extends StatefulWidget {
  const HomePageTask({super.key});

  @override
  State<HomePageTask> createState() => _HomePageTaskState();
}

class _HomePageTaskState extends State<HomePageTask> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff24253C),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Text(
                  "My Activity",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontFamily: ".idea/assets/font/Poppins-Bold.ttf"),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
