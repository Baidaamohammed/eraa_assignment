import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:untitled1/Screens/DoneScreen/done_taskes_screen.dart';
import 'package:untitled1/Screens/archiveScreen/archive_taskes_screen.dart';
import 'package:untitled1/Screens/taskeScreen/new_taskes_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
{
  int CurrentIndex =0;
  List<Widget> Screens =
      [
        NewTasksScreen(),
        DoneTasksScreen(),
        ArchiveTasksScreen(),
      ];
  List<String> titles =
  [
    'New Tasks',
    'Done Tasks',
    'Archive tasks',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titles[CurrentIndex],
        ),

      ),
      body: Screens[CurrentIndex],
      floatingActionButton:FloatingActionButton(onPressed: ()
      {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 50.0,
        currentIndex: CurrentIndex,
        onTap: (index)
        {
          setState(()
          {
            CurrentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),

        ],
      ),

    );
  }
}
