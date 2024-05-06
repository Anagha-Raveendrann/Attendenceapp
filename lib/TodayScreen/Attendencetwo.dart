// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';


// class TodayScreen extends StatefulWidget {
//   const TodayScreen({super.key});

//   @override
//   State<TodayScreen> createState() => _TodayScreenState();
// }

// class _TodayScreenState extends State<TodayScreen> {
//   double screenHeight = 0;
//   double screenWidth = 0;

//   Color primary = const Color(0xffeef444c);
//   @override
//   Widget build(BuildContext context) {
//     Color primary = const Color(0xffeef444c);
//     void _showDataPicker() {
//       showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2000), lastDate: DateTime(2025),);
//     }
//     screenHeight = MediaQuery.of(context).size.height;
//     screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//         backgroundColor: Colors.blueAccent[100],
//         body:SingleChildScrollView(

//           child: Column(
//             children: [
//               Stack(

//                   children:[ Container(
//                     height: 200,
//                     width: double.infinity,
//                     decoration: BoxDecoration(

//                       color: Colors.blue[900],
//                       borderRadius: BorderRadiusDirectional.only(bottomEnd: Radius.circular(150),),
//                     ),
//                     child: Center(child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text("Welcome Employee",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),

//                         ),
//                         Text("Let's Check In",style: TextStyle(color: Colors.white,fontSize: 15),),
//                       ],
//                     ),

//                     ),
//                   ),

//                   ]),
//               SizedBox(height: 3,),
//               Padding(
//                 padding: const EdgeInsets.all(20.0),
//                 child: Container(
//                   margin: EdgeInsets.only(top: 12,bottom: 32),
//                   height: 150,
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [ BoxShadow(
//                       color: Colors.black26,
//                       blurRadius: 10,
//                       offset: Offset(2, 2),
//                     ),
//                     ],
//                     borderRadius: BorderRadius.all(Radius.circular(20),),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Expanded(child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text("Check in ",style: TextStyle(
//                               fontFamily: "NexaRegular",
//                               fontSize: screenWidth/20,
//                               color: Colors.black54
//                           ),),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text('9:30 AM',style: TextStyle(
//                             fontFamily: "NexaBold",
//                             fontSize: screenWidth/18,
//                           ),),
//                         ],
//                       ),),
//                       Expanded(child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Text("Check out",style: TextStyle(
//                               fontFamily: "NexaRegular",
//                               fontSize: screenWidth/20,
//                               color: Colors.black54
//                           ),),
//                           SizedBox(
//                             height: 15,
//                           ),
//                           Text('--:-- PM',style: TextStyle(
//                             fontFamily: "NexaBold",
//                             fontSize: screenWidth/18,
//                           ),),
//                         ],
//                       ))
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 3,),
//               MaterialButton(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
//                   onPressed: _showDataPicker,

//                   child: const Padding(padding: EdgeInsets.all(10.0),

//                     child: Text('Choose Date',style: TextStyle(fontSize: 15,color: Colors.white,),),

//                   ),
//                   color: Colors.blue[900]

//               ),
//               SizedBox(height: 25,),

//               Container(
//                   alignment: Alignment.centerLeft,
//                   child: RichText(
//                     text: TextSpan(
//                         text: DateTime.now().day.toString(),
//                         style: TextStyle(
//                           color: Colors.red[900],
//                           fontSize: screenWidth/18,
//                           fontFamily: "NexaBold",
//                         ),
//                         children: [
//                           TextSpan(
//                               text: DateFormat("MMMM yyyy").format(DateTime.now(),),
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: screenWidth/20,
//                                 fontFamily: "NexaBold",fontWeight: FontWeight.bold,
//                               )

//                           )
//                         ]
//                     ),
//                   )
//               ),
//               Container(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   DateFormat('hh:mm:ss a').format(DateTime.now(),),style: TextStyle(
//                     fontFamily: "NexaRegular",
//                     fontSize: screenWidth/20,
//                     color: Colors.black54
//                 ),
//                 ),
//               ),
//               SizedBox(height: 45,),
//               StreamBuilder(
//                   stream: Stream.periodic(const Duration(seconds: 5),),
//                   builder: (context, snapshot) {
//                     return Container(
//                       margin: const EdgeInsets.only(top: 24),
//                       child: Builder(builder: (context) {
//                         final GlobalKey<SlideActionState> key = GlobalKey();

//                         return SlideAction(
//                           text: "Slide to check In",textStyle: TextStyle(
//                           color: Colors.black54,
//                           fontSize: screenWidth/ 20,
//                           fontFamily: "NexaRegular",
//                         ),
//                           outerColor: Colors.white,
//                           innerColor: Colors.red[900],
//                           key: key,
//                           onSubmit: () {
//                             print(DateFormat('hh:mm').format(DateTime.now()),);
//                           },
//                         );
//                       },

//                       ),
//                     );
//                   }
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }