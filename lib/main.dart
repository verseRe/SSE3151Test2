import 'package:flutter/material.dart';
import 'package:sse3151test2/dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void login() {
    if(_emailController.text.isEmpty || _passController.text.isEmpty) {
      return;
    }
    else {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Dashboard()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 300,),
              Text(
                'Roselle',
                style: TextStyle(fontSize: 80,),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: SizedBox(
                  width: 300,
                  child: TextField(
                    controller: _passController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 300,
                  child: TextButton(
                    onPressed: login,
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black, fontSize: 40),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
