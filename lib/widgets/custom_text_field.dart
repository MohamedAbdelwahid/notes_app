import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({super.key , this.hintext});

  String? hintext;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color:
          Colors.white),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color:
              Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
