import 'dart:convert';

import 'package:api/task_login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const TaskLoginPage(),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ElevatedButton(
                onPressed: () {
                  signUpAPI();
                },
                child: Text("Signup")),
            ElevatedButton(
                onPressed: () {
                  loginAPI();
                },
                child: Text("login")),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void signUpAPI() async {
    print("API start-=-==-=-=-=-=-=-");

    http.Response response = await http.post(
      Uri.parse("https://todo-list-app-kpdw.onrender.com/api/auth/signup"),
      body: {
        "username": "sonu2",
        "email": "sonu2@gmail.com",
        "password": "demo@123"
      },
    );
    print("-=-=----=-= status -- ${response.statusCode}");
    print("-=-=----=-= status -- ${response.body}");
    if (response.statusCode == 200) {
      //success
      print("-=-=----=-= status -- ${jsonDecode(response.body)['message']}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(jsonDecode(response.body)['message'])));
    } else {
      //error

      print("-=-=----=-= status -- ${jsonDecode(response.body)['message']}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(jsonDecode(response.body)['message'])));
    }

  }
  void loginAPI() async {
    print("API start-=-==-=-=-=-=-=-");

    http.Response response = await http.post(
      Uri.parse("https://todo-list-app-kpdw.onrender.com/api/auth/signin"),
      body: {
        "username": "devani009",
        "password": "demo@123dd"
      },
    );
    print("-=-=----=-= status -- ${response.statusCode}");
    print("-=-=----=-= status -- ${response.body}");
    if (response.statusCode == 200) {
      //success
      print("-=-=----=-= status -- ${jsonDecode(response.body)['message']}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("login successfully")));
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Page2,));
    } else {
      //error

      print("-=-=----=-= status -- ${jsonDecode(response.body)['message']}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(jsonDecode(response.body)['message'])));
    }

  }
}
