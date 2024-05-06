import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Const/Colors.dart';
import 'package:pokakaattendenceapp/Screens/Admin.dart';
import 'package:pokakaattendenceapp/Screens/Adminlogin.dart';
import 'package:pokakaattendenceapp/Screens/Dailylogin_Screen.dart';
import 'package:pokakaattendenceapp/Screens/Employeemanagement.dart';

class selectcategories extends StatefulWidget {
   selectcategories({super.key});

  @override
  State<selectcategories> createState() => _selectcategoriesState();
}

class _selectcategoriesState extends State<selectcategories> {
 bool _isSelected  = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 16, 82, 135),
      
      // backgroundColor: Color.fromARGB(255, 34, 72, 135),
      body:Column(children: [
        // 
        // 
        // Image.asset('assets/pokaklogo2-removebg-preview.png',width: 180,),
        SizedBox(
          height: 70,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Image.asset('assets/staffing.png',width: 300,),
        ),
        SizedBox(
          height: 20,
        ),

        Text("Select Category",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white)),
        SizedBox(
          height: 40,
        ),
      
             
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                                    width: 300,
                                    
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black, backgroundColor: Colors.white,
                                        shadowColor: Colors.white,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                                        minimumSize: Size(100, 40), //////// HERE
                                      ),
                                      onPressed: () {
                               Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Adminlogin()));
                                      },
                                      child: Text(
                                        'Admin',
                                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                                      ),
                                    ),
                       ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 25.0),
                       child: Container(
                                     width: 300,
                                     child: ElevatedButton(
                                       style: ElevatedButton.styleFrom(
                                         foregroundColor: Colors.black, backgroundColor: Colors.white,
                                         shadowColor: Colors.white,
                                         elevation: 3,
                                         shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                                         minimumSize: Size(100, 40), //////// HERE
                                       ),
                                       onPressed: () {
                                        Navigator.push(context,
                             MaterialPageRoute(builder: (context) => DailyLogin()));
                                       },
                                       child: Text(
                                         'Employee',
                                         style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                                       ),
                                     ),
                       ),
                     ),
                     SizedBox(),
                   Padding(
                     padding: const EdgeInsets.only(left: 25.0),
                     child: Container(
                                   width: 300,
                                   child: ElevatedButton(
                                     style: ElevatedButton.styleFrom(
                                       foregroundColor: Colors.black, backgroundColor: Colors.white,
                                       shadowColor: Colors.white,
                                       elevation: 3,
                                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                                       minimumSize: Size(100, 40), //////// HERE
                                     ),
                                     onPressed: () {},
                                     child: Text(
                                       'Customer/client',
                                       style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                                     ),
                                   ),
                       ),
                   ),
            SizedBox(
              height: 40,
            ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Container(
                                 width: 200,
                                 child: ElevatedButton(
                                   style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black, backgroundColor: Color.fromARGB(255, 225, 231, 236),
                    shadowColor: Colors.blue,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(100, 40), //////// HERE
                                   ),
                                   onPressed: () {
                    
                                   },
                                   child: Text(
                    'Continue',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                                   ),
                                 ),
                       ),
                 )
          ],
        )
    );
  }
}
    
        