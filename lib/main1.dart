// import 'dart:async';
//
// import 'package:carousel_pro/carousel_pro.dart';
// import 'package:flutter/material.dart';
// import 'package:pin_entry_text_field/pin_entry_text_field.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//       // debugShowCheckedModeBanner: false,
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//
//
//
//     Timer(
//         Duration(seconds: 5),
//             () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => SecondScreen())));
//
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //    child: Align(
//     //      alignment: Alignment.center,
//     //      child: Text(
//     //        'Some text here',
//     //        style: TextStyle(
//     //
//     //        ),
//     //      ),
//     //    ),
//     //  );
//
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Color(0xcb3e37d7),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.center,
//                 child: Text("Aankalan",
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 29,
//                         fontWeight: FontWeight.bold)),
//               ),
//               Container(
//                 child: Text("The Assessment",
//                     style: TextStyle(color: Colors.white, fontSize: 15)),
//               ),
//             ]),
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Login';
//
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//
//             Container(
//                 alignment: Alignment.center,
//                 width: 400,
//                 height: 400,
//                 child: Carousel(
//                   boxFit: BoxFit.fill,
//                   autoplay: true,
//                   animationCurve: Curves.fastOutSlowIn,
//                   animationDuration: Duration(milliseconds: 1000),
//                   dotSize: 6.0,
//                   dotIncreaseSize: 2.0,
//                   dotBgColor: Colors.transparent,
//                   dotColor: Colors.green,
//                   dotPosition: DotPosition.bottomCenter,
//                   showIndicator: true,
//                   indicatorBgPadding: 7.0,
//                   images: [
//                     AssetImage('assets/download.png'),
//                     AssetImage('assets/image.png'),
//                     AssetImage('assets/image.png'),
//                   ],
//                 )
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
//               child: TextField(
//                 maxLength: 10,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Phone Number',
//                   labelText: 'Enter your Phone Number',
//                 ),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.all(25),
//               alignment: Alignment.center,
//               child: FlatButton(
//                 child: Text(
//                   'Login with phone number',
//                   style: TextStyle(fontSize: 20.0),
//                 ),
//                 color: Colors.blueAccent,
//                 textColor: Colors.white,
//                 onPressed: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => OtpScreen()));
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class OtpScreen extends StatelessWidget {
//   FocusNode myFocusNode;
//
//   @override
//   void initState() {
//     myFocusNode = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     myFocusNode.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     const appTitle = 'Text Field Focus';
//
//     return MaterialApp(
//       title: appTitle,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(appTitle),
//         ),
//         body: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 alignment: Alignment.center,
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: PinEntryTextField(
//                     fields: 6,
//                     showFieldAsBox: true,
//                     onSubmit: (String pin) {
//                       showDialog(
//                           context: context,
//                           builder: (context) {
//                             return AlertDialog(
//                               title: Text("Pin"),
//                               content: Text('Pin entered is $pin'),
//                             );
//                           });
//                     },
//                   ),
//                 ),
//               ),
//               Container(
//                 // child: Text("The Assessment",style: TextStyle(color:Colors.white,fontSize:15)),
//                 margin: EdgeInsets.all(25),
//                 alignment: Alignment.center,
//                 child: FlatButton(
//                   child: Text(
//                     'verify Otp',
//                     style: TextStyle(fontSize: 20.0),
//                   ),
//                   color: Colors.blueAccent,
//                   textColor: Colors.white,
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => MyHomePageDrawer()));
//                   },
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
// }
//
// class MyHomePageDrawer extends StatelessWidget {
//   var child=null;
//   int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text("Drawer")),
//     body: Column(
//     children: <Widget>[
//     Container(
//     alignment:Alignment.topCenter,
//     width: 380,
//     height: 40,
//     child: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Image.asset(
//     'assets/download.png',
//     height: 100,
//     width: 70,
//     ),
//     const SizedBox(
//     width: 10.0,
//     ),
//     const Text(
//     'My Aankalan Scholarship',
//     style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//     ],
//     ),
//     ),
//     Container(
//     alignment: Alignment.center,
//     //width: 390,
//     height: 85,
//
//     child: Stack(
//     children:[
//     Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//     Image.asset(
//     'assets/download.png',
//     height: 290,
//     width: 200,
//     ),
//     Image.asset(
//     'assets/download.png',
//     height: 290,
//     width: 200,
//     ),
//     ],
//     ),
//     Container(
//     padding: const EdgeInsets.all(5.0),
//     alignment: Alignment.bottomCenter,
//     child: Image.asset(
//     'assets/next.png',
//     height: 26,
//     width: 26,
//     ),
//     )
//     ]
//     ),
//
//     ),
//     Container(
//     alignment: Alignment.center,
//     width: 390,
//     height: 87,
//     child: Carousel(
//     boxFit: BoxFit.fill,
//     autoplay: true,
//     animationCurve: Curves.fastOutSlowIn,
//     animationDuration: Duration(milliseconds: 1000),
//     dotSize: 6.0,
//     dotIncreaseSize: 2.0,
//     dotBgColor: Colors.transparent,
//     dotColor: Colors.green,
//     dotPosition: DotPosition.bottomCenter,
//     showIndicator: true,
//     indicatorBgPadding: 7.0,
//     images: [
// // Saved images
//     AssetImage('assets/download.png'),
//     AssetImage('assets/image.png'),
//     AssetImage('assets/image.png'),
//     ],
//     )
//     ),
//     const SizedBox(
//     height: 20.0,
//     ),
//     Container(
//     height: 87,
//     color: Colors.red[100],
//     alignment:Alignment.centerLeft,
//     child: Stack(
//     children:[
//     Column(
//     children:[
//     Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//     const SizedBox(
//     width: 5.0,
//     ),
//     const Text(
//     'My Selected Exam/s',
//     style: TextStyle(fontWeight: FontWeight.bold),
//     ),
//     const SizedBox(
//     width: 210.0,
//     ),
//
//     Container(
//     margin: const EdgeInsets.only(top: 10.0),
//     padding: const EdgeInsets.all(5.0),
//     decoration: BoxDecoration(
//     color: Colors.red[400],
//     border: Border.all(
//     color: Colors.red[500],
//     ),
//     borderRadius: BorderRadius.all(Radius.circular(10))
//     ),
//     child: Text("Change",style: TextStyle(fontWeight: FontWeight.bold)),
//     ),
//     ],
//     ),
//
//     Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     children: [
//     const SizedBox(
//     width: 5.0,
//     ),
//
//     Container(
//     width: 110,
//     margin: const EdgeInsets.only(top: 10.0),
//     padding: const EdgeInsets.all(5.0),
//     alignment:Alignment.centerLeft,
//     decoration: BoxDecoration(
//     color: Colors.red[100],
//     border: Border.all(
//     color: Colors.red[300],
//     ),
//     borderRadius: BorderRadius.all(Radius.circular(10))
//     ),
//     child: Stack(
//     alignment: Alignment.centerLeft,
//     children:[
//
//     Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children:[
//     const SizedBox(
//     width: 5.0,
//     ),
//     Image.asset(
//     'assets/pencil.png',
//     height: 10,
//     width: 10,
//     ),
//     const SizedBox(
//     width: 10.0,
//     ),
//     Text("Add My Exam",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
//     ]
//     )
//     ],
//     ),
//
//     ),
//     ]
//     ),
//     ]
//     )
//     ]
//     ),
//     ),
//
//     Container(
//     height: 240,
//
//     child: Stack(
//     children: [
//     Column(
//
//
//     children: [
//
//     const SizedBox(
//     height: 10.0,
//     ),
//     Text("    Aankalan Competitive Exam Challenges",
//     style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
//     ),
//     const SizedBox(
//     height: 3.0,
//     ),
//
//     SizedBox(
//     height: 240,
//     child: PageView.builder(
//     itemCount: 10,
//     controller: PageController(viewportFraction: 0.7),
//     onPageChanged: (int index) => setState(() => _index = index),
//     itemBuilder: (_, i) {
//     return Transform.scale(
//     scale: i == _index ? 0.9 : 0.9,
//     child: Card(
//     elevation: 6,
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//     child: Center(
//     child: Stack(
//     children: [
//
//     Image.asset(
//     'assets/download.png',
//     height: 20,
//     width: 100,
//     alignment: Alignment.centerLeft,
//     ),
//
//     Container(
//     height: 300,
//     alignment: Alignment.center,
//
//     child:Column(
//
//     children: [
//     const SizedBox(
//     height: 15.0,
//     ),
//     CircleAvatar(
//     radius: 32.0,
//     child: ClipRRect(
//     child: Image.asset('assets/image.png'),
//     borderRadius: BorderRadius.circular(70.0),
//     ),
//     ),
//     const SizedBox(
//     height: 5.0,
//     ),
//     Text(
//     "Challenged By",
//     style: TextStyle(fontSize: 12),
//     ),
//     const SizedBox(
//     height: 3.0,
//     ),
//     Text(
//     "hasan imam",
//     style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//     ),
//     const SizedBox(
//     height: 3.0,
//     ),
//     Text(
//     "Mca , Noida",
//     style: TextStyle(fontSize: 12),
//     ),
//
//     Text(
//     "oscillations and waves",
//     style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
//     ),
//     const SizedBox(
//     height: 8.0,
//     ),
//
//     Container(
//     margin: EdgeInsets.all(18),
//     child: FlatButton(
//     child: Text('Join Challenges', style: TextStyle(fontSize: 18.0)),
//     color: Colors.yellow[700],
//     textColor: Colors.white,
//     padding: EdgeInsets.fromLTRB(38, 0, 38, 0),
//     onPressed: () {
//
//     },
//     ),
//     ),
//     ]
//     )
//
//     )
//     ],
//     ),
//
//     //child: Text(
//     //"Card ${i + 1}",
//     //style: TextStyle(fontSize: 32),
//     // ),
//     ),
//     ),
//     );
//     },
//     ),
//     ),

//     Container(
//     height: 200,
//     margin: EdgeInsets.all(18),
//     color: Colors.deepPurple[800],
//     child:Stack(
//     children:[
//     Row(
//     children:[
//     Column(
//     children
//     Row(
//     children:[
//     Text("Next Contest  ",
//     style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.bold),
//     ),
//     Image.asset(
//     'assets/download.png',
//     height: 12,
//     width: 12,
//     ),
//     ]
//     ),
//     Row(
//     children:[
//     Padding(
//     padding: const EdgeInsets.only(top: 5.0),
//     child:Text("Mechanics ",
//     style: TextStyle(fontSize: 7,color: Colors.white,fontWeight: FontWeight.bold),
//     ),
//     ),
//     ]
//     ),
//
//     Row(
//     children:[
//     Image.asset(
//     'assets/pencil.png',
//     height: 8,
//     width: 8,
//     ),
//
//     ]
//     ),
