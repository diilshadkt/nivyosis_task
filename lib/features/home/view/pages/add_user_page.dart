import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nivyosis_task/core/widgets/appbar_widget.dart';
import 'package:nivyosis_task/features/home/view/widgets/textfield_widget.dart';

class AddUserPage extends StatelessWidget {
  static const routePath = "/add";
  const AddUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();
    final emailController = useTextEditingController();
    final addressController = useTextEditingController();
    final descriptionController = useTextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppbarWidget(title: "Add New User"),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 12),
              child: Column(
                children: [
                  TextfieldWidget(title: "Name",controller: nameController,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 50,
                  ),
                  TextfieldWidget(title: "Phone",controller: phoneController,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 50,
                  ),
                  TextfieldWidget(title: "Email",controller: emailController,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 50,
                  ),
                  TextfieldWidget(title: "Address",controller: addressController,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 50,
                  ),
                  TextfieldWidget(title: "Description",controller: descriptionController,),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 20,
                  ),
                  // add user button
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width / 3,
                      height: MediaQuery.sizeOf(context).height / 30,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 1, 0, 52),
                              shape: ContinuousRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          child: Text(
                            "add User",
                            style: TextStyle(color: Colors.white),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
