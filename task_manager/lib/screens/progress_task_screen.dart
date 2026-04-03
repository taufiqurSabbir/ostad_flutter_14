import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager/widgets/tm_appbar.dart';

import '../data/models/task_model.dart';
import '../data/services/api_caller.dart';
import '../providers/task_provider.dart';
import '../utils/urls.dart';
import '../widgets/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.microtask((){
      final provider = Provider.of<TaskProvider>(context,listen: false);
      provider.fetchTaskByStatus('Progress');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Consumer<TaskProvider>(
    builder: (context, taskProvider, _){
          return ListView.separated(
            itemCount: taskProvider.progressTask.length,
              itemBuilder: (context,index){
              return TaskCard(
                taskModel: taskProvider.progressTask[index],
                cardColor: Colors.purple,
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
