import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

import '../data/models/task_model.dart';
import '../data/services/api_caller.dart';
import '../providers/task_provider.dart';
import '../utils/urls.dart';
import '../widgets/task_card.dart';

class CompletedTaskScreen extends StatefulWidget {
  const CompletedTaskScreen({super.key});

  @override
  State<CompletedTaskScreen> createState() => _CompletedTaskScreenState();
}

class _CompletedTaskScreenState extends State<CompletedTaskScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask((){
      final provider = Provider.of<TaskProvider>(context,listen: false);
      provider.fetchTaskByStatus('Completed');
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body:  Consumer<TaskProvider>(
          builder: (context, taskProvider, _){
            return ListView.separated(
              itemCount: taskProvider.completeTask.length,
              itemBuilder: (context,index){
                return TaskCard(
                  taskModel: taskProvider.completeTask[index],
                  cardColor: Colors.green,
                  refreshParent: () {  },


                );
              },
              separatorBuilder: (context,index){
                return SizedBox(
                  height: 4,
                );
              },
            );
          }
      ),
    );
  }
}
