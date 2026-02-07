import 'package:flutter/material.dart';

import '../db/task_database.dart';
import '../models/task.dart';
class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  List<Task> tasks = [];
  final TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }

  Future<void> refreshTask() async {
    tasks = await TaskDatabase.getTasks();
    setState(() {

    });
  }

  Future<void> addTask() async {

    if(controller.text.isNotEmpty){
      await TaskDatabase.insertTask(Task(title: controller.text, isDone: false));
      controller.clear();
      refreshTask();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task with DB',
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: 'Enter task'
                  ),
                )),
                IconButton(onPressed: addTask, icon: Icon(Icons.add))
              ],
            ),
          ),
          
          Expanded(
            child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder:(context,index){
                  final task = tasks[index];
                  return Card(
                    child: ListTile(
                      leading: Checkbox(value: task.isDone, onChanged: (_){},),
                      title: Text(task.title),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
