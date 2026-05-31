import 'package:flutter/material.dart';
import 'package:frist_project/views/widgets/custom_icon.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.icon,
    this.onIconTap,
  });
  final String title;
  final IconData? icon;
  final VoidCallback? onIconTap;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 32),
        ),
        if (widget.icon != null) ...[
          const Spacer(),
          CustomSearchIcon(
            icon: widget.icon!,
            onTap: widget.onIconTap,
          ),
        ],
      ],
    );
  }
}
