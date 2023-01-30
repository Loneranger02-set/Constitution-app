import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'timelinePage.dart';
import 'articlesPage.dart';
import 'getDates.dart';

class MenuScreen extends StatefulWidget{
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_MenuScreenState();
}
class _MenuScreenState extends State<MenuScreen>{

  Widget buildTimeLine(){
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      elevation: 5,
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
      ),
      primary: Colors.white,
      onPrimary: Colors.black12,
    );
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: raisedButtonStyle,
        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const GetDates())),
        child: const Text(
          'Timeline',
          style: TextStyle(
              color: Color.fromRGBO(143, 148, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
      ),
    );
  }

  Widget buildTakeQuiz(){
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      elevation: 5,
      padding: const EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100)
      ),
      primary: Colors.white,
      onPrimary: Colors.black12,
    );
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: ElevatedButton(
        style: raisedButtonStyle,
        onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>const Articles())),
        child: const Text(
          'Articles',
          style: TextStyle(
              color: Color.fromRGBO(143, 148, 255, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
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
                        buildTimeLine(),
                        const SizedBox(height: 30),
                        buildTakeQuiz(),
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
// _launchURLApp() async {
//   const url = 'https://enchroma.com/pages/color-blindness-test';
//   if (await canLaunch(url)) {
//     await launch(url, forceSafariVC: true, forceWebView: true,enableJavaScript: true);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
//
// _launchURLBrowser() async {
//   const url = 'https://enchroma.com/pages/color-blindness-test';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }