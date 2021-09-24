import 'package:flutter/material.dart';
import 'package:my_todoey/screens/screen_tasks.dart';
import 'package:my_todoey/viewmodels/task_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskViewModel>(
      create: (context) => TaskViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenTasks(),
      ),
    );
  }
}
