import 'package:flutter/material.dart';

import '../api/apiClient.dart';
import 'TaskList.dart';
class cancelTaskList extends StatefulWidget {
  const cancelTaskList({Key? key}) : super(key: key);
  @override
  State<cancelTaskList> createState() => _cancelTaskListState();
}

class _cancelTaskListState extends State<cancelTaskList> {

  List TaskItems=[];
  bool Loading=true;

  @override
  void initState(){
    CallData();
    super.initState();
  }

  CallData() async{
    var data= await TaskListRequest("Canceled");
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
