import 'package:flutter/material.dart';
import 'dart:async';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'menuPage.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                const MenuScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 650,),
          GradientText('KNOW MY CONSTITUTION',//textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
            colors: const [
              Colors.deepPurple,
              Colors.greenAccent,
              Colors.pinkAccent,
              Colors.teal,
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/download.png'),
        ),
      ),
    );
  }
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'Flutter login UI',
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
    );
  }
}