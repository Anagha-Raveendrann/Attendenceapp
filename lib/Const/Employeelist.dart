
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokakaattendenceapp/Const/Colors.dart';

class Employeelistt extends StatefulWidget {
  const Employeelistt({super.key});

  @override
  State<Employeelistt> createState() => _EmployeelisttState();
}

class _EmployeelisttState extends State<Employeelistt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    leading: Icon(Icons.arrow_back_ios,color: whitecolor,),
    backgroundColor:bluecolor,
title: Text("Employee List",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: whitecolor),),    ),
    backgroundColor: bluecolor,
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
           ElevatedButton(onPressed: (){}, child: Text("Add employee",style: TextStyle(color: Colors.black),)),
          Expanded(
            child: ListView.builder(
             // shrinkWrap: true,
              padding: EdgeInsets.all(20),
              itemCount: 4,
                  
              itemBuilder: (context, index) {
              
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 190,
                    width: 300,
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 198, 222, 243),
                      border: Border.all(
                        color: bluecolor
                        
                      ),
                      borderRadius: BorderRadius.circular(20)
                    ),
                  child: 
                      Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 230.0),
                          
                            child: Text("Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 190.0),
                            child: Text("Department",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                           SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 215.0),
                            child: Text("Position",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                           SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 185.0),
                            child: Text("Joining Date",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                           SizedBox(
                            height: 7,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: Text("Project",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          ),
                          // SizedBox(
                          //   height: 5,
                          
                          // ),
                           Padding(
                             padding: const EdgeInsets.only(left: 210.0),
                             child: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                           )
                        ],
                        
                        
                      ),
                      
                
                  
                ),
              );
              
            },),
          ),
        ],
      )
    ) ;
  }
}