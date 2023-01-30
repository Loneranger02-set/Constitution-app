// import 'package:flutter/material.dart';
// import 'detailsPage.dart';
//
// const String DetailsPageRoute="DetailsPage";
//
// Route<dynamic> generateRoute(RouteSettings settings){
//   switch(settings.name){
//     case DetailsPageRoute:
//       return MaterialPageRoute(builder: (context) => AboutUs());
//     default:
//       return MaterialPageRoute(
//           builder: (context) => const UndefinedView());
//   }
// }
// class UndefinedView extends StatelessWidget {
//   const UndefinedView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text('Route is not defined'),
//       ),
//     );
//   }
// }