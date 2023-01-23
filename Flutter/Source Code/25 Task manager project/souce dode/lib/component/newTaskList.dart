import 'package:flutter/material.dart';
import 'package:taskmanager/api/apiClient.dart';

import 'TaskList.dart';

class newTaskList extends StatefulWidget {
  const newTaskList({Key? key}) : super(key: key);

  @override
  State<newTaskList> createState() => _newTaskListState();
}

class _newTaskListState extends State<newTaskList> {
  List TaskItems=[];
  bool Loading=true;

  @override
  void initState(){
    CallData();
    super.initState();
  }

  CallData() async{
   var data= await TaskListRequest("New");
   setState(() {
     Loading=false;
     TaskItems=data;
   });
  }


  @override
  Widget build(BuildContext context) {
    return Loading?(Center(child: CircularProgressIndicator())):RefreshIndicator(
      onRefresh: () async {
        await CallData();
      },
      child: TaskList(TaskItems)
    );
  }
}
