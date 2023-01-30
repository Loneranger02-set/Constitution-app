import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'timelinePage.dart';

var date1,date2;

class GetDates extends StatefulWidget{
  const GetDates({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState()=>_getDates();
}

class _getDates extends State<GetDates>{

  final dateController1 = TextEditingController();
  final dateController2 = TextEditingController();

  Widget buildFromDate(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'From',
            style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1), fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            readOnly: true,
            controller: dateController1,
            decoration: const InputDecoration(
                hintText: 'Pick your date'
            ),
            onTap: () async{
              var date=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050)
              );
              dateController1.text=date.toString().substring(0,10);
              date1=date.toString().substring(0,4);
            },
          )
        ],
      ),
    );
  }

  Widget buildToDate(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'To',
            style: TextStyle(
                color: Color.fromRGBO(143, 148, 251, 1), fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextField(
            readOnly: true,
            controller: dateController2,
            decoration: const InputDecoration(
                hintText: 'Pick your date'
            ),
            onTap: () async{
              var date=await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2050)
              );
              dateController2.text=date.toString().substring(0,10);
              date2=date.toString().substring(0,4);
            },
          )
        ],
      ),
    );
  }

  Widget buildGetTimeline() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        key:const Key("Continue"),
        onPressed:(){
          getResults(date1, date2);
          Navigator.push(context,MaterialPageRoute(builder: (context)=>const TimelineScreen()));
        },
        style: ElevatedButton.styleFrom(
          elevation: 5,
          onPrimary: Colors.black12,
          primary: const Color.fromRGBO(143, 148, 251, 1),
          padding: const EdgeInsets.all(20),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        child: const Text(
          'Continue',
          key:Key('LoginText'),
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
        title: const Text('Input dates',style: TextStyle(fontWeight: FontWeight.bold),),
    //automaticallyImplyLeading: false,
    backgroundColor: const Color.fromRGBO(143, 148, 255, 1),
    actions: const [],
    ) ,

    body: AnnotatedRegion<SystemUiOverlayStyle>(
       value:SystemUiOverlayStyle.light,
       child:GestureDetector(
         child:Stack(
             children:<Widget>[
               Container(
                 height:double.infinity,
                 width:double.infinity,
                 decoration: const BoxDecoration(
                     gradient:LinearGradient(
                         begin: Alignment.topCenter,
                         end:Alignment.bottomCenter,
                         colors: [
                           Color.fromRGBO(143, 148, 251, .4),
                           Color.fromRGBO(143, 148, 251, .6),
                           Color.fromRGBO(143, 148, 251, 0.8),
                         ]
                     )
                 ),
                 child:SingleChildScrollView(
                   physics: const AlwaysScrollableScrollPhysics(),
                   padding: const EdgeInsets.symmetric(
                     horizontal: 15,
                   ),
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: <Widget>[
                       const SizedBox(height: 60),
                       buildFromDate(),
                       const SizedBox(height: 50),
                       buildToDate(),
                       const SizedBox(height: 30),
                       buildGetTimeline(),
                       // const SizedBox(height: 30),
                       // buildCurrencyDetectionBtn()
                     ],
                   ),
                 ),
               )
             ]
         ),
       ),
     ),
    );
  }
}