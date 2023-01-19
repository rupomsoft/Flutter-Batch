import 'package:flutter/material.dart';

import '../../utility/utility.dart';

class newTaskListScreen extends StatefulWidget {
  const newTaskListScreen({Key? key}) : super(key: key);
  @override
  State<newTaskListScreen> createState() => _newTaskListScreenState();
}

class _newTaskListScreenState extends State<newTaskListScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

        ],
      ),
      body: Center(
        child: Text("New Task"),
      ),
    );
  }
}
