import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({Key? key}) : super(key: key);

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('User List'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () async {
              final FullContact contact =
                  (await FlutterContactPicker.pickFullContact());

              log("message${contact}");
            },
            child: Text("PRESS"),
          ),
        ));
  }
}
