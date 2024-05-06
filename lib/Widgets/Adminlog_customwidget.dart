// import 'package:flutter/material.dart';

//  class CustomLoginTextformfield extends StatelessWidget {


//    CustomLoginTextformfield({Key? key, required this.labeltext, required this.icon, required this.ontap, required this.isobscure, required InputDecoration decoration}) : super(key: key);
//   final formkey = GlobalKey<FormState>();
//   LoginController Controller=Get.put(LoginController());
//   TextEditingController controller = TextEditingController();
//   final String labeltext;
//   final Widget icon;
//   final VoidCallback ontap;
//   final bool isobscure;



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           TextFormField(
//             obscureText: isobscure,
//             controller: controller,
//             validator: (value){
//               if(value!.isEmpty){
//                 return "email/password cannot be empty";
//               }
//             },
//           )
//         ],
//       ),
//     );
//   }
// }
