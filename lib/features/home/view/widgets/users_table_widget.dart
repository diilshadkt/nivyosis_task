import 'package:flutter/material.dart';

class UsersTableWidget extends StatelessWidget {
  const UsersTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "User 1",
                    ),
                    Text("user1@gmail.com"),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.visibility)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete))
                      ],
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class UserTable extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           columns: [
//             DataColumn(label: Text('Name')),
//             DataColumn(label: Text('Email')),
//             DataColumn(label: Text('Action')),
//           ],
//           rows: [
//             _buildRow('User 1', 'user1@gmail.com'),
//             _buildRow('User 2', 'user2@gmail.com'),
//             _buildRow('User 3', 'user2@gmail.com'),
//           ],
//         ),
//       ),
//     );
//   }

//   DataRow _buildRow(String name, String email) {
//     return DataRow(cells: [
//       DataCell(Text(name)),
//       DataCell(Text(email)),
//       DataCell(Row(
//         children: [
//           IconButton(
//             icon: Icon(Icons.remove_red_eye, color: Colors.blue),
//             onPressed: () {
//               // Add action for "view" button
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.delete, color: Colors.red),
//             onPressed: () {
//               // Add action for "delete" button
//             },
//           ),
//         ],
//       )),
//     ]);
//   }
// }
