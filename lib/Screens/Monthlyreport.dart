
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



import 'package:pokakaattendenceapp/Screens/Dob_Screen.dart';

  class MonthlyReportt extends StatefulWidget {
  const MonthlyReportt({super.key});

  @override
  State<MonthlyReportt> createState() => _MonthlyReporttState();
}

class _MonthlyReporttState extends State<MonthlyReportt> {
   TextEditingController dateController = TextEditingController();
  
  @override
  void initState() {
    
    super.initState();
    dateController.text="";
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 62, 132, 190),
      appBar: AppBar(
        title: Text("Monthly Report",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color.fromARGB(255, 40, 111, 169),
      ),
      body: Column(
        children: [
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          ),
          
          Image.asset('assets/office-removebg-preview.png',width: 800,),
      
          
         DatePickerr(),
          
          SizedBox(
            height: 20,

          ),
            
            Column(
              children: [
                Container(
                  width: 350,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: Checkbox.width,
                      headingTextStyle: TextStyle(fontWeight: FontWeight.bold),
                      border: TableBorder.all(color:  Color.fromARGB(255, 90, 146, 192),width: 2),
                      columns: [
                        DataColumn(label: Text("Name")),
                        DataColumn(label: Text("Designation")),
                        DataColumn(label: Text("Monthly hour")),
                        DataColumn(label: Text(" Amount"))
                      ], 
                      rows: [
                        DataRow(
                          cells:[
                          DataCell(Text("Anagha")),
                           DataCell(Text("Flutter dev")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Aiswarya")),
                           DataCell(Text("Python dev")),
                            DataCell(Text("5")),
                             DataCell(Text("10")),
                        ] 
                        ),
                        DataRow(
                          cells:[
                          DataCell(Text("Suhana")),
                           DataCell(Text("Flutter dev")),
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