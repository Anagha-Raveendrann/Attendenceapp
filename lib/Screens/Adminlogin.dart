import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Const/Colors.dart';
import 'package:pokakaattendenceapp/Screens/Admin.dart';
import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';
import 'package:pokakaattendenceapp/Screens/Registerpage.dart';
import 'package:pokakaattendenceapp/Screens/datepicker.dart';

class Adminlogin extends StatefulWidget {
  const Adminlogin({super.key});

  @override
  State<Adminlogin> createState() => _AdminloginState();
}

class _AdminloginState extends State<Adminlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromARGB(255, 93, 146, 231),
      appBar: AppBar(
        title: Image.asset('assets/pokaklogo2-removebg-preview.png',width: 180,),
        // title: Text(
        //   " Admin Login",
        //   style: TextStyle(
        //       fontSize: 20, fontWeight: FontWeight.bold, color:whitecolor),
        // ),
          backgroundColor: Color.fromARGB(255, 34, 72, 135),
        leading: Icon(Icons.arrow_back,color: whitecolor,),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 10, right: 10),
        child: Container(
          height: 520,
          width: 400,
          decoration: BoxDecoration(
            color:    Color.fromARGB(255, 54, 101, 176),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(80),
            bottomRight: Radius.circular(80),
            topLeft: Radius.circular(80),
            topRight: Radius.circular(80),
            

            ),

             //border: Border.all(width: 2, color: Colors.black,),
            
          ),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
               Text(
          " Admin Login",
          style: TextStyle(
              fontSize: 27, fontWeight: FontWeight.bold, color:whitecolor),
        ),
         SizedBox(
                height: 50,
              ),

              DatePicke(),
               SizedBox(
                height: 10,
              ),
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
               SizedBox(
                height: 10,
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
                height: 50,
              ),
              Container(
                width: 200,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shadowColor: Colors.blue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(100, 40), //////// HERE
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin()));
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
              // Padding(
              //   padding: const EdgeInsets.only(left: 70.0),
              //   child: Row(
              //     children: [
              //       Text("dont have any account"),
              //       TextButton(onPressed: (){
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Registerr()));
              //       }, child: Text("Register",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color.fromARGB(255, 146, 155, 172)),))
              //     ],
              //   ),
              // )
              
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
