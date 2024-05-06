import 'package:flutter/material.dart';


import 'package:pokakaattendenceapp/Const/Colors.dart';
import 'package:pokakaattendenceapp/Widgets/Gridview.dart';

class Empoyeeee extends StatefulWidget {
  const Empoyeeee({Key? key}) : super(key: key);

  @override
  State<Empoyeeee> createState() => _EmpoyeeeeState();
}

class _EmpoyeeeeState extends State<Empoyeeee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
         body: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 height: 250,
                 width: 400,
                 decoration: BoxDecoration(
                     color: lightblue,
                     borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(40,40),
                         bottomLeft: Radius.elliptical(40, 40))
                 ),
                 child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 100.0,right: 40),
                       child: Text("Employee Management &",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(right: 20.0,top: 5),
                       child: Text("Office Expenses",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                     )

                   ],
                 ),
               ),
               GriddWidget()
             ],
           ),
         ),
    );
  }
}
