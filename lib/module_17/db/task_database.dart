
import 'package:path/path.dart' as p;

import 'package:sqflite/sqflite.dart';

import '../models/task.dart';

class TaskDatabase {
  static Database ? _db;


  static Future<Database> getDb() async{
    if(_db != null) return _db!;

    _db = await openDatabase(
      p.join(await getDatabasesPath(), 'tasks.db'),
      onCreate: (db,version){
        return db.execute('CREATE TABLE tasks(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER)');
      },
      version: 2,
    );
    return _db!;
  }


  static Future<void> insertTask(Task task) async{
    final db = await getDb();
    await db.insert('tasks', task.toMap(),conflictAlgorithm: ConflictAlgorithm.replace);
  }

  static Future<List<Task>> getTasks() async{
    final db = await getDb();
    final List<Map<String,dynamic>> maps = await db.query('tasks');
    return List.generate(maps.length, (i) => Task.formMap(maps[i]));
  }


  static Future<void> deleteTask(int id) async{
    final db = await getDb();
    await db.delete('tasks', where: 'id = ?', whereArgs: [id] );
  }

  static Future<void> updateTask(Task task) async{
    final db = await getDb();
    await db.update('tasks',task.toMap(), where: 'id = ?', whereArgs: [task.id] );
  }



}