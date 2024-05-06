import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Screens/Estimatedate.dart';
import 'package:pokakaattendenceapp/Screens/Startingdate.dart';
import 'package:pokakaattendenceapp/Widgets/CustomTextformfield.dart';

class Projectscreen extends StatefulWidget {
  const Projectscreen({super.key});

  @override
  State<Projectscreen> createState() => _ProjectscreenState();
}

class _ProjectscreenState extends State<Projectscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Create Project",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 30, 105, 166),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Container(
          height: 500,
            width: 370,
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 111, 177, 227),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(120),
              topLeft: Radius.circular(70)
              ),
        
               //border: Border.all(width: 2, color: Colors.black,),
              
            ),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            CustomTextformfield(hintText: "Project Name"),
        
          
               CustomTextformfield(hintText: "Team Members"),
                CustomTextformfield(hintText: "Backend:"),
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
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                ),
              ),
            
          ],),
        ),
      ),
    );
  }
}