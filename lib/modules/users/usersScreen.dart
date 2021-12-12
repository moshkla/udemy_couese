import 'package:flutter/material.dart';
import 'package:udemy_couese/models/user/user_model.dart';



class UserPage extends StatelessWidget {
  List<UserModel> users =[
    UserModel(id: 1, name: 'Anas Abd Elazim', number: '01228370456'),
    UserModel(id: 2, name: 'Abd Elazim', number: '01228370456'),
    UserModel(id: 3, name: 'Mohamed Abd Elazim', number: '01228370456'),
    UserModel(id: 4, name: 'Loay Abd Elazim', number: '01228370456'),
    UserModel(id: 5, name: 'esam Abd Elazim', number: '01228370456'),
    UserModel(id: 6, name: 'Medo Abd Elazim', number: '01228370456'),
    UserModel(id: 7, name: 'Sawsan Abd Elazim', number: '01228370456'),
    UserModel(id: 8, name: 'Ragaa ', number: '01228370456'),
    UserModel(id: 9, name: 'Medhat Abd Elazim', number: '01228370456'),
    UserModel(id: 10, name: 'Ayman Abd Elazim', number: '01228370456'),
    UserModel(id: 11, name: 'Sayed Abd Elazim', number: '01228370456'),
    UserModel(id: 12, name: 'Mosa Abd Elazim', number: '01228370456'),
    UserModel(id: 13, name: 'Rady Abd Elazim', number: '01228370456'),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'USERS'
        ),

      ),
    body: ListView.separated(itemBuilder: (context,index)=>buildUserItem(users[index]),
        separatorBuilder: (context,index)=>Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 20.0,
          ),
          child: Container(
            width: double.infinity,
            height: 1.0,
            color: Colors.grey[300],
          ),
        ), itemCount: users.length),
    );
  }
  Widget buildUserItem(UserModel userModel)=>Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          child: Text(
            '${userModel.id}',
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
        SizedBox(width: 12.0,),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${userModel.name}',
              style: TextStyle(
                fontSize: 25.0,
              ),
            ),
            Text(
              '${userModel.number}',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey,

              ),
            ),
          ],
        ),
      ],
    ),
  );
}
