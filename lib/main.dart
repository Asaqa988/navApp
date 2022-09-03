import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/screenTwo.dart';

void main() {
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Container(
                child: ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return ScreenTwo();
                    },
                  ));
                });
              },
              child: Text(
                "go to the page # 2",
                style: TextStyle(fontSize: 30),
              ),
            )),
            Container(
                child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red),
              onPressed: () {},
              child: Text(
                "go to the page # 1",
                style: TextStyle(fontSize: 30),
              ),
            )),
          ],
        ),
      
    );
  }
}
