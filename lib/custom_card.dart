import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.icon, required this.text, this.fontSize});
  final String text;
  final Icon icon;
  final double? fontSize;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        color: Colors.grey.withOpacity(0.7),
        child: Row(
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
      ),
    );
  }
}