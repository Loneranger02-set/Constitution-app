import 'package:flutter/material.dart';

class ArticleDetails extends StatelessWidget {
  late String no;
  late String name;
  late String cont;
  ArticleDetails({required this.no, required this.name, required this.cont});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 148, 255, 1),
        title: Text("Article " +no),
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(143, 148, 251, .4),
                  Color.fromRGBO(143, 148, 251, .6),
                  Color.fromRGBO(143, 148, 251, 0.8),
                ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Name : "+name+"\nDescription : "+cont,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 18.0,
                      color: Colors.black45,
                      //fontFamily: "Caveat",
                      fontWeight: FontWeight.w700),
                ),

                padding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}