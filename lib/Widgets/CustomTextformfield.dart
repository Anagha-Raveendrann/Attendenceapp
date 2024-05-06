import 'package:flutter/material.dart';

class CustomTextformfield extends StatelessWidget {
   CustomTextformfield({super.key, required this.hintText , });
  final formkey= GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();
  final String hintText;
  


  @override
  Widget build(BuildContext context) {
    return 
        Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5, bottom: 5),
              child: Container(
                width: 320,
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                    filled: true,
                    fillColor: Colors.white,
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
            );
            
    
  }
}