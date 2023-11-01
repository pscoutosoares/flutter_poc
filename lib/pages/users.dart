import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class UsersPage extends StatelessWidget {
  final dio = Dio();

  void getHttp() async {
    final response = await dio
        .get('https://65423b1af0b8287df1ffc017.mockapi.io/api/v1/users');
    final UsersController c = Get.put(UsersController());
    c.addUsers(response.data);
  }

  @override
  Widget build(BuildContext context) {
    getHttp();
    final UsersController c = Get.put(UsersController());
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: ListView(
      children: [
        for (var user in c.users)
          Card(
              child: ListTile(
            title: Text(user["name"]),
            subtitle: Text(user["email"]),
            trailing: CircleAvatar(
              backgroundImage: NetworkImage(user["avatar"]),
            ),
          )),
      ],
    ))));
  }
}

class UsersController extends GetxController {
  List<dynamic> users = [].obs;
  addUsers(newUsers) => users = newUsers;
}
