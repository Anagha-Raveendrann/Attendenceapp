import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';
import 'package:pokakaattendenceapp/Screens/Employeemanagement.dart';
import 'package:pokakaattendenceapp/Screens/Registerpage.dart';
import 'package:pokakaattendenceapp/Screens/datepicker.dart';

class DailyLogin extends StatefulWidget {
  const DailyLogin({super.key});

  @override
  State<DailyLogin> createState() => _DailyLoginState();
}

class _DailyLoginState extends State<DailyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 131, 179, 215),
      appBar: AppBar(
        title: Text(
          " Login",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 30, 105, 166),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 10, right: 10),
        child: Container(
          height: 480,
          width: 400,
          decoration: BoxDecoration(
            color:  Color.fromARGB(255, 51, 96, 130),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(120),
            topLeft: Radius.circular(120)
            ),

             //border: Border.all(width: 2, color: Colors.black,),
            
          ),
          child: Column(
            children: [
              SizedBox(
                height: 90,
              ),
              DatePicke(),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 5, bottom: 3, right: 10),
                child: Container(
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: ' ID Number',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 198, 213, 225),
                      contentPadding: const EdgeInsets.only(
                          left: 25.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10.0, top: 5, bottom: 5, right: 10),
                child: Container(
                  width: 320,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 198, 213, 225),
                      contentPadding: const EdgeInsets.only(
                          left: 25.0, bottom: 6.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: const Color.fromARGB(255, 198, 213, 225),
                    shadowColor: Colors.blue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(100, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Empoyeeee()));
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0),
                child: Row(
                  children: [
                    Text("dont have any account"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerr()));
                    }, child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color.fromARGB(255, 146, 155, 172)),))
                  ],
                ),
              )
              
              // Container(
              //   width: 190,
              //   child: ElevatedButton(
              //       style: ElevatedButton.styleFrom(
              //         foregroundColor: Colors.black,
              //         backgroundColor: const Color.fromARGB(255, 198, 213, 225),
              //         shadowColor: const Color.fromARGB(255, 90, 115, 136),
              //         elevation: 3,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(32.0)),
              //         minimumSize: Size(100, 40), //////// HERE
              //       ),
              //       onPressed: () {},
              //       child:
              //           IconButton(onPressed: () {}, icon: Icon(Icons.logout))),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
