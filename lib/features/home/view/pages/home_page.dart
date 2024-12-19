import 'package:flutter/material.dart';
import 'package:nivyosis_task/features/home/view/widgets/users_table_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                      "Welcome",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 26,
            ),
            // Add user button
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width / 2.12),
              child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 3,
                  height: MediaQuery.sizeOf(context).height / 30,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 0, 52),
                          shape: ContinuousRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      child: Text(
                        "add User",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 10,
            ),
            UsersTableWidget()
          ],
        ),
      ),
    );
  }
}
