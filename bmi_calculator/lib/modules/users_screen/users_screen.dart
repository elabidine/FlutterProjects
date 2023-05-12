import 'package:flutter/material.dart';

import '../../models/users.dart';


class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [
      UserModel(id: 1, name: 'Karim', phone: 079898832),
      UserModel(id: 2, name: 'Mohamed', phone: 0697875645),
      UserModel(id: 1, name: 'Karim', phone: 079898832),
      UserModel(id: 1, name: 'Karim', phone: 079898832),
      UserModel(id: 1, name: 'Karim', phone: 079898832),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: ListView.separated(
          separatorBuilder: (context, index) => Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],
          ),
          itemBuilder: (context, index) => builditemphone(users[index]),
          itemCount: users.length,
          scrollDirection: Axis.vertical,
        ));
  }
}

Widget builditemphone(UserModel users) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.blue,
            child: Text(
              '${users.id}',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${users.name}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                '${users.phone}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
