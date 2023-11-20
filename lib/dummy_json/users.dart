import 'package:dummy_json/model/users/users.dart';
import 'package:dummy_json/services/users_api.dart';
import 'package:flutter/material.dart';

class UsersData extends StatefulWidget {
  const UsersData({super.key});

  @override
  State<UsersData> createState() => _UsersDataState();
}

class _UsersDataState extends State<UsersData> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Users'),
        ),
        body: Column(
          children: [
            buildDatas(),
          ],
        ),
      ),
    );
  }

  FutureBuilder<Users> buildDatas() {
    return FutureBuilder<Users>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // var userData = snapshot.data!;
          String total = snapshot.data!.total.toString();
          String skip = snapshot.data!.skip.toString();
          String limit = snapshot.data!.limit.toString();
          return Center(
            child: Column(
              children: [
                Text('Total: ${total}'),
                Text('Skip: ${skip}'),
                Text('Limit: ${limit}'),
              ],
            ),
          );
        }
      },
    );
  }

  Widget buildData() {
    return FutureBuilder<Users>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        } else {
          // var userData = snapshot.data!;
          return Center(
            child: Column(
              children: [
                Text('Total: ${snapshot.data!.total}'),
                Text('Skip: ${snapshot.data!.skip}'),
                Text('Limit: ${snapshot.data!.limit}'),
              ],
            ),
          );
        }
      },
    );
  }
}
