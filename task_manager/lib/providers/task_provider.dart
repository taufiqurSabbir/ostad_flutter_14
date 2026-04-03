


import 'package:flutter/material.dart';
import 'package:task_manager/data/models/task_model.dart';
import 'package:task_manager/data/models/task_status_count.dart';
import 'package:task_manager/data/services/api_caller.dart';

import '../utils/urls.dart';

class TaskProvider extends ChangeNotifier{

    List<TaskModel>newTask = [];
    List<TaskModel>progressTask = [];
    List<TaskModel>completeTask = [];
    List<TaskModel>cancelledTask = [];
    List<TaskStatusCountModel>taskStatusCounts = [];

    bool isLoading = false;
    String? errorMessage;


    _setLoading(bool value){
      isLoading = value;
      notifyListeners();
    }

    void setListByStatus(String status, List<TaskModel>tasks){
      switch(status){
        case 'New':
          newTask = tasks;
          break;

        case 'Progress':
          progressTask = tasks;
          break;

        case 'Completed':
          completeTask = tasks;
          break;

        case 'Cancelled':
          cancelledTask = tasks;
          break;

      }
    }


    Future fetchTaskByStatus(String status) async {
      _setLoading(true);

      final response = await ApiCaller.getRequest(URL: Urls.TaskByStatusURL(status));


      if(response.isSuccess){
        List<TaskModel> tasks  = [];
        for(Map<String,dynamic>jsonData in response.responseData['data']){
          tasks.add(TaskModel.fromJson(jsonData));
        }
        setListByStatus(status, tasks );
      }else{
        errorMessage = response.responseData['data'];
      }

      _setLoading(false);
    }


    Future fetchTaskCounts() async {

      final response = await ApiCaller.getRequest(URL: Urls.TaskCountURL);


      if(response.isSuccess){
        List<TaskStatusCountModel> count = [];
        for(Map<String,dynamic>jsonData in response.responseData['data']){
          count.add(TaskStatusCountModel.formJson(jsonData));
        }
        taskStatusCounts = count;
      }else{
        errorMessage = response.responseData['data'];
      }
      notifyListeners();
    }
}