import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ccommonUserInputWidget(
    {String? title,
      String? subtitle,
      String? Function(String?)? validator,
      TextEditingController? controller,

    }
    ) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 15,right: 15,top: 20),
        child: TextFormField(
          style: TextStyle(color: Colors.white),
          controller: controller,
          validator: validator,
          decoration: InputDecoration(

            hintText: "$title",hintStyle: TextStyle(color: Colors.white),
            labelText: "$title",labelStyle: TextStyle(color: Colors.white),
            // prefixIcon: Icon(Icons.person,color: Colors.white),
            border: OutlineInputBorder(

              // borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    ],
  );
}