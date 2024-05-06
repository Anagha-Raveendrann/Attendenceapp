import 'package:flutter/material.dart';

import '../../const/Colors.dart';

class GriddWidget extends StatelessWidget {
  const GriddWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
        children: [
          Padding(padding:EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                  color:lightblue,
                borderRadius: BorderRadius.circular(15)
              ),
              child: InkWell(
                onTap: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeManagement()));
                },
                child: Column(
                  children: [
                    Image.asset('assets/emm-removebg-preview.png',width: 120,),
                    Text("Attendence",style: TextStyle(fontSize: 17),),

    ])
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(8),
          child: Container(
            
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 95, 145),
                borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              onTap: (){
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeManagement()));
              },
              child: InkWell(
                onTap: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>OfficeExpenses()));
                },
                child: Column(
                  children: [
                    Image.asset('assets/office-removebg-preview.png'),
                    Text("Office"),
                    Text("Expenses"),
                  ],
                ),
              ),
            ),
          ),
          ),
          Padding(padding: EdgeInsets.all(8),
           child: Container(
               child: InkWell(
                 onTap: (){
                 //  Navigator.push(context, MaterialPageRoute(builder: (context)=>CustomerOrClient()));
                 },
                 child: Column(
                   children: [
                     Image.asset('assets/customer-removebg-preview.png',width: 150,),
                     SizedBox(
                       height: 9,
                     ),
                     Text("CheckIn/CheckOut"),
                    // Text("Expenses")
                   ],
                 ),
               ),
             decoration: BoxDecoration(
               color: const Color.fromARGB(255, 29, 109, 173),
                 borderRadius: BorderRadius.circular(15),
             ),
           ),
          ),
          Padding(padding: EdgeInsets.all(8),
          child: Container(
           child: InkWell(
             onTap: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>EmployeeManagement()));
             },
             child: Column(
               children: [
                 Image.asset('assets/privacypolicy-removebg-preview.png',width: 100,),
                 Text("Privacy"),
                 Text("Policy"),

               ],
             ),
           ),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(15),
            ),
          ),
          ),
        ],


    );
  }
}
