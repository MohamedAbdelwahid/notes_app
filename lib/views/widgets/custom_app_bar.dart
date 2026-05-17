import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/custom_icon.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();


}


class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(
           widget.title ,
         style: const TextStyle(
          fontSize: 32
          )),
        const Spacer(),
        CustomSearchIcon( 
          icon: widget.icon  ,
          ),
      ],
    );
  }
}
