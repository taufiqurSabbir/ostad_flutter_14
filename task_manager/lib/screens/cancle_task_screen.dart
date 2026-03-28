import 'package:flutter/material.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

import '../data/models/task_model.dart';
import '../data/services/api_caller.dart';
import '../utils/urls.dart';
import '../widgets/task_card.dart';

class CancelTaskScreen extends StatefulWidget {
  const CancelTaskScreen({super.key});

  @override
  State<CancelTaskScreen> createState() => _CancelTaskScreenState();
}

class _CancelTaskScreenState extends State<CancelTaskScreen> {
  List<TaskModel> TaskList = [];


  Future<void>getProgressTask() async {

    final response = await ApiCaller.getRequest(URL: Urls.TaskByStatusURL('Cancelled'));

    List<TaskModel> taskList = [];

    setState(() {

    });

    if(response.isSuccess){
      for(Map<String,dynamic>jsonData in response.responseData['data']){
        taskList.add(TaskModel.fromJson(jsonData));
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.responseData['data'])));

    }

    TaskList = taskList;



  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getProgressTask();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: ListView.separated(
        itemCount: TaskList.length,
        itemBuilder: (context,index){
          return TaskCard(taskModel: TaskList[index],
            cardColor: Colors.red,
            refreshParent: () {  },


          );
        },
        separatorBuilder: (context,index){
          return SizedBox(
            height: 4,
          );
        },
      ),
    );
  }
}
