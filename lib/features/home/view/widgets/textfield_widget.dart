import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String title;
  final TextEditingController? controller;

  const TextfieldWidget({
    super.key,
    required this.title,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Color.fromARGB(255, 1, 0, 52),
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Container(
          height: MediaQuery.sizeOf(context).height / 18,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 205, 202, 202),
              borderRadius: BorderRadius.circular(8)),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
