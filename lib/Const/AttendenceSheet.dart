
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pokakaattendenceapp/Const/Colors.dart';
import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';




  class Attendencesheett extends StatefulWidget {
  const Attendencesheett({super.key});

  @override
  State<Attendencesheett> createState() => _AttendencesheettState();
}

class _AttendencesheettState extends State<Attendencesheett> {
   TextEditingController dateController = TextEditingController();
  
  @override
  void initState() {
    
    super.initState();
    dateController.text="";
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 62, 132, 190),
      appBar: AppBar(
        title: Text("Attendence Sheet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color.fromARGB(255, 59, 128, 184),
      ),
      body: Column(
        children: [
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          ),
          
          Image.asset('assets/bnfdvkls-removebg-preview.png',width: 400,height: 200,),
      SizedBox(
        height: 10,
      ),
          
         DatePickerr(),
          
          SizedBox(
            height: 20,

          ),
            
            Column(
              children: [
                Container(
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                   // color: Color.fromARGB(255, 17, 96, 160),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: Checkbox.width,
                      headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: TableBorder.all(color: Color.fromARGB(255, 90, 146, 192),width: 2),
                      columns: [
                        DataColumn(label: Text("Name")),
                        DataColumn(label: Text("CheckIntime")),
                        DataColumn(label: Text("Checkouttime")),
                        DataColumn(label: Text(" WorkHour"))
                      ], 
                      rows: [
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("9")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("9")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("9")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("9")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("9")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                      ],
                      
                      ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                ),
              ],
            )
             
         
        ],
      ),
    );
  }
}