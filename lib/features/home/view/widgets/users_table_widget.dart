import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nivyosis_task/features/home/controller/user_controller.dart';
import 'package:nivyosis_task/features/home/model/get_user_model.dart';

class UsersTableWidget extends ConsumerWidget {
  
  const UsersTableWidget({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void showDeleteDialog(
      BuildContext context,
    ) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: const Text("Are you sure you want to delete this item?"),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () async {
                  // Navigator.of(context).pop();
                  // await _deleteProduct(context, id, dataBox);
                },
                child: const Text("Delete"),
              ),
            ],
          );
        },
      );
    }

    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width / 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Name",
              ),
              Text("Email"),
              Text("Action"),
            ],
          ),
          Divider(
            color: Colors.black,
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: FutureBuilder<List<GetUserModel>>(
              future: ref.watch(userControllerProvider.notifier).getUser(),
              builder: (context, snapshot) {
                final userDatas = snapshot.data;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      "Error: ${snapshot.error}",
                      style: const TextStyle(color: Colors.red, fontSize: 16),
                    ),
                  );
                }

                if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text("No user datas."),
                  );
                }

                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: userDatas!.length,
                  itemBuilder: (context, index) {
                    final userData = userDatas[index];
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          userData.name,
                        ),
                        Text(userData.email),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.visibility)),
                            IconButton(
                                onPressed: () => showDeleteDialog(context),
                                icon: Icon(Icons.delete))
                          ],
                        )
                      ],
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
