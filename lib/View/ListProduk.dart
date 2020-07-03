import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test2_mge_irvan/model/Data.dart';
import 'package:test2_mge_irvan/service/Api.dart';

class ListProduk extends StatefulWidget {
  @override
  _ListProdukState createState() => _ListProdukState();
}

class _ListProdukState extends State<ListProduk> {
  var users = new List<User>();

  _getUsers() {
    API.getUsers().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        users = list.map((model) => User.fromJson(model)).toList();
      });
    });
  }

  initState() {
    super.initState();
    _getUsers();
  }

  dispose() {
    super.dispose();
  }

  @override
  build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("User List"),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: users.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(users[index].thumbnailUrl)),
                    title: Text(users[index].title),
                  )
                ],
              ),
            );
          },
        ));
  }
}
