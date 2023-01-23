import 'package:flutter/material.dart';
import 'package:taskmanager/component/cancelTaskList.dart';

import '../../component/TaskAppBar.dart';
import '../../component/completedTaskList.dart';
import '../../component/newTaskList.dart';
import '../../component/appBottomNav.dart';
import '../../component/progressTaskList.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  int TabIndex=0;

  onItemTapped(int index){
    setState(() {
      TabIndex=index;
    });
  }

  final widgetOptions=[
    newTaskList(),
    progressTaskList(),
    completedTaskList(),
    cancelTaskList()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskAppBar(context),
      body: widgetOptions.elementAt(TabIndex),
      bottomNavigationBar: appBottomNav(TabIndex,onItemTapped),
    );
  }
}
