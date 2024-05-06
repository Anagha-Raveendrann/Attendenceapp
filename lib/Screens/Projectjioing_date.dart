import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Projectjioingdate extends StatefulWidget {
  const Projectjioingdate({super.key});

  @override
  State<Projectjioingdate> createState() => _ProjectjioingdateState();
}

class _ProjectjioingdateState extends State<Projectjioingdate> {
  TextEditingController dateController = TextEditingController();
  @override
  void initState() {
   
    super.initState();
    dateController.text="";
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: Container(
        width: 320,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color:Colors.white
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 40,left: 13),
            child: TextField(
              controller: dateController,
              decoration:  InputDecoration(
                 border: InputBorder.none,
                 contentPadding: EdgeInsets.only(right: 160,top: 15),
                icon: Icon(Icons.calendar_today),
                label: Text("Enter DOB:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 15),)
              ),
              readOnly: true,
              onTap: () async{
                DateTime? PickedDate=await showDatePicker(context: context,
                initialDate: DateTime.now(),
                 firstDate: DateTime(2000), 
                 lastDate: DateTime(2040)
                );
                if(PickedDate!=null){
                String formatteDate=DateFormat("yyyy-MM-dd").format(PickedDate);
              
                  setState(() {
                    dateController.text=formatteDate.toString();
                  });
              
                }else{
                  print("Not selected");
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}