import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nivyosis_task/core/widgets/appbar_widget.dart';
import 'package:nivyosis_task/features/home/view/pages/add_user_page.dart';
import 'package:nivyosis_task/features/home/view/widgets/users_table_widget.dart';

class HomePage extends ConsumerWidget {
  static const routePath = "/home";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWidget(title: "Welcome"),
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
                      onPressed: () {
                        context.push(AddUserPage.routePath);
                      },
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
