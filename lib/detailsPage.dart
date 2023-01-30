import 'package:flutter/material.dart';

class AmendmentDetails extends StatelessWidget {
  late String date;
  late String no;
  late String art;
  late String obj;
  late String pm;
  late String presid;
  AmendmentDetails({required this.date, required this.no, required this.art, required this.obj,required this.pm,required this.presid});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 148, 255, 1),
        title: Text(date+", "+no+" amendment"),
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
                ])),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  "Amendments : "+ art +"\n\n"+ "Objectives : "+obj +"\n\n"+ "Prime Minister : " + pm +"\n\n"+ "President : " + presid,
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