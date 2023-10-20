import 'package:flutter/material.dart';

class CustomColumn extends StatefulWidget {
  const CustomColumn({super.key, required this.icon, required this.text, this.children, this.fontSize,});
  final Icon icon;
  final String text;
  final List<Widget>? children;
  final double? fontSize;

  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.grey.withOpacity(0.7),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.icon,
                const SizedBox(
                width: 20.0,
                ),
                Text(widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
              color: Colors.black,
              fontSize: widget.fontSize ?? 18.0,
              fontFamily: 'Playfair'
                   ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: widget.children ?? [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}