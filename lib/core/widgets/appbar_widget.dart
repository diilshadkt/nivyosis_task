import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  const AppbarWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height / 6,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 1, 0, 52),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30))),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 9,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ));
  }
}
