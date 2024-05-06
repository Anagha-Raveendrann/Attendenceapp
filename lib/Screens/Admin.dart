import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Const/AttendenceSheet.dart';

import 'package:pokakaattendenceapp/Const/Colors.dart';
import 'package:pokakaattendenceapp/Const/Employeelist.dart';
import 'package:pokakaattendenceapp/Screens/LoginRegister.dart';
import 'package:pokakaattendenceapp/Screens/Monthlyreport.dart';



class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:bluecolor,
        title: Text("Admin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: whitecolor),),
      ),
      backgroundColor: bluecolor,
      body: Column(

        children: [
            Image.asset('assets/em_management-removebg-preview.png',),
          Container(
            height: 70,
            width: 330,

            child: Card(

              child: ListTile(
               leading: Image.asset('assets/persons-removebg-preview.png',width: 70,),
                title: Text("Employee List"),
                trailing: IconButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Employeelistt()));
                }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20,)),
                    ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: 330,
            child: Card(
              child: ListTile(
                leading: Image.asset('assets/grup-removebg-preview.png',width: 70,),
                title: Text("Attendance Sheet "),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendencesheett()));
                }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // Container(
          //   height: 70,
          //   width: 330,
          //   child: Card(
          //     child: ListTile(
          //       leading: Image.asset('assets/mark_attendence-removebg-preview.png',width: 60,),
          //       title: Text("Attendance Report"),
          //       trailing: IconButton(onPressed: (){
          //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Attendencesheett()));
          //       }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20)),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          Container(
            height: 70,
            width: 335,
            child: Card(
              child: ListTile(
                leading: Image.asset('assets/report-removebg-preview.png',width: 60,),
                title: Text("Monthly Report"),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MonthlyReportt()));
                }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
           Container(
            height: 70,
            width: 335,
            child: Card(
              child: ListTile(
                leading: Image.asset('assets/attendencemarking - Copy.png',width: 60,),
                title: Text("Login Register"),
                trailing: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginregisterr()));
                }, icon: Icon(Icons.arrow_forward_ios_rounded,size: 20)),
              ),
            ),
          )


        ],
      ),
    );
  }
}
