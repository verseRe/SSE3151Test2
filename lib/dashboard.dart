import 'package:flutter/material.dart';
import 'package:sse3151test2/main.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        title: Text(
          "Roselle",
          style: TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 50),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/Untitled.jpg'),
                  ),
                ),
              ),
              SizedBox(height: 80,),
              Text(
                "Muhammad Syahridwan",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "202885",
                style: TextStyle(fontSize: 40),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 300,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyApp()));
                    },
                    child: Text(
                      "Logout",
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
