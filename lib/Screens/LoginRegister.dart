import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';
import 'package:pokakaattendenceapp/Widgets/CustomTextformfield.dart';

class Loginregisterr extends StatefulWidget {
  const Loginregisterr({super.key});

  @override
  State<Loginregisterr> createState() => _LoginregisterrState();
}

class _LoginregisterrState extends State<Loginregisterr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color.fromARGB(255, 171, 206, 236),
        appBar: AppBar(
        title: Text(" Login Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color.fromARGB(255, 78, 114, 231),
      ),
      
      body: Column(
        children: [
        
        Container(
          height: 668,
          width: 400,
          decoration:new BoxDecoration(
            color: Colors.blue,
            gradient: new LinearGradient(
              colors: [
                Colors.blue,
                Colors.purple,
                Colors.blueAccent,
                Colors.purpleAccent
              ],
               begin: Alignment.topRight,
            end: Alignment.bottomRight,
            tileMode: TileMode.mirror,
            transform: GradientRotation(400)
            
          )

          ),
          child: Column(
            children: [
               SizedBox(
                height: 40,
              ),
              CustomTextformfield(hintText: "Weekly"),
              CustomTextformfield(hintText: "Monthly"),
              CustomTextformfield(hintText: "Yearly"),

              SizedBox(
                height: 20,
              ),
              Image.asset('assets/atten.png')
            ],
          ),

        )
         
          
        
      ])
    );
  }
}