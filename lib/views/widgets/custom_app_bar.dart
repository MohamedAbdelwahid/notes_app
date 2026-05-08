
import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/custom_icom.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes' ,  style: TextStyle(
          fontSize: 32,
        ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}


