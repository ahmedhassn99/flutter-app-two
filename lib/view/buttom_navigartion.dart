

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'archivedTask.dart';
import 'doneTask.dart';
import 'newTask.dart';

class ButtonNavigationBars extends StatefulWidget {
  const ButtonNavigationBars({super.key});

  @override
  State<ButtonNavigationBars> createState() => _ButtonNavigationBarsState();
}

class _ButtonNavigationBarsState extends State<ButtonNavigationBars> {
  int currentIndex=0;

  @override
  List<Widget> screens=[
    NewTask(),
    DoneTask(),
    ArchivedTasks(),
  ];
  List<String> title=[
    'New Task',
    'Done Task',
    'Archive Task'
  ];
  Future<String> getName() async{
    return 'Love You Moustafa';
  }
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(title[currentIndex]),backgroundColor: Colors.blue),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type:BottomNavigationBarType.fixed ,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon:Icon( Icons.menu),label: "Tasks"),
          BottomNavigationBarItem(icon:Icon( Icons.check_circle_outline),label: "Done"),
          BottomNavigationBarItem(icon:Icon( Icons.archive_outlined),label: "Archive"),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
