


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            cursorColor: Color(0xff8E8F92),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
              suffixIcon: Icon(Icons.search, color: Color(0xff8E8F92), size: 24,),
              hintText: "Search",
              hintStyle: TextStyle(
                  color: Colors.white60
              ),
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff888A8F), width: 1.0),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xff888A8F), width: 1.0),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
        SizedBox(width: 32,)
      ],
    );
  }
}