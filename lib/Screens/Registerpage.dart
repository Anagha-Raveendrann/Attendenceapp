import 'package:flutter/material.dart';
import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';
import 'package:pokakaattendenceapp/Widgets/CustomTextformfield.dart';

class Registerr extends StatefulWidget {
  const Registerr({super.key});

  @override
  State<Registerr> createState() => _RegisterrState();
}

class _RegisterrState extends State<Registerr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 110, 154, 186),
      appBar: AppBar(
        title: Text(
          "Registerpage",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(105, 156, 198, 1),
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CustomTextformfield(hintText: "ID number"),
            CustomTextformfield(hintText: "Name"),
             //CustomTextformfield(hintText: hintText),
              CustomTextformfield(hintText: "Designation"),
               CustomTextformfield(hintText: "Joining Date"),
                CustomTextformfield(hintText: "Number"),
                 CustomTextformfield(hintText: "Email"),
                  CustomTextformfield(hintText: "Language"),
                   CustomTextformfield(hintText: "Backend/frontend"),
                    CustomTextformfield(hintText: "projectassign/ProjectName"),
                     Container(
              width: 200,
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
                  'Save',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
              ),
                     )
          ]
        )
      )
    );
  }
}