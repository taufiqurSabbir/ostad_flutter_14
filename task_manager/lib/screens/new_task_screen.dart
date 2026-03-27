import 'package:flutter/material.dart';
import 'package:task_manager/data/models/task_model.dart';
import 'package:task_manager/data/models/task_status_count.dart';
import 'package:task_manager/data/services/api_caller.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

import '../utils/urls.dart';
import '../widgets/task_card.dart';
import '../widgets/task_count_by_status.dart';
import 'add_new_task.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {

  List<TaskModel> _newTaskList = [];
  List<TaskStatusCountModel> taskCountList = [];


  Future<void>getAllTaskCount() async {

  final response = await ApiCaller.getRequest(URL: Urls.TaskCountURL);

  List<TaskStatusCountModel> taskCount = [];

  setState(() {

  });

  if(response.isSuccess){
    for(Map<String,dynamic>jsonData in response.responseData['data']){
      taskCount.add(TaskStatusCountModel.formJson(jsonData));
    }
  }else{
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.responseData['data'])));

  }

  taskCountList = taskCount;



 }

  Future<void>getNewTask() async {

    final response = await ApiCaller.getRequest(URL: Urls.TaskByStatusURL('New'));

    List<TaskModel> newTask = [];

    setState(() {

    });

    if(response.isSuccess){
      for(Map<String,dynamic>jsonData in response.responseData['data']){
        newTask.add(TaskModel.fromJson(jsonData));
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(response.responseData['data'])));

    }

    _newTaskList = newTask;



  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllTaskCount();
    getNewTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 90,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: taskCountList.length,
                  itemBuilder: (context,index){
                    print(taskCountList[index]);
                return TaskCountByStatus(title: taskCountList[index].status, count: taskCountList[index].count,);
              }, separatorBuilder: (context,index){
                return SizedBox(width: 10,);
              },),
            ),
          ),


          Expanded(
            child: ListView.separated(
                itemCount: _newTaskList.length,
                itemBuilder: (context,index){
                  return  TaskCard(taskModel: _newTaskList[index], cardColor: Colors.blue, refreshParent: () {
                    getAllTaskCount();
                    getNewTask();

                  },);
                },
                separatorBuilder: (context,index){
                  return Divider();
                }, ),
          )



        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTask()));
      }, child: Icon(Icons.add),),
    );
  }
}

