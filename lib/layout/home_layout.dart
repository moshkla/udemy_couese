
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_couese/modules/archive_tasks/ArchivedTasksScreen.dart';
import 'package:udemy_couese/modules/done_task/doneTasksScreen.dart';
import 'package:udemy_couese/modules/new_tasks/NewTasksScreen.dart';

class HomeLayout extends StatefulWidget {

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}
Future<String> getName()async{
  return 'Anas Abd Elazim';
}
class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex=0;
  List<Widget> screens =[
    NewTasksPage(),
    DoneTasksPage(),
    ArchivedTasksPage(),
  ];
  List<String> titles=[
    'New Tasks',
    'Done Tasks',
    'Archived Tasks'
  ];
  @override
  void initState() {
    creatDatabase();
    super.initState();
  }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text(titles[currentIndex],
         )
       ),
       body: screens[currentIndex],
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: ()async{
         /*  try{
             var name= await getName();
             print(name);
             print('Annosa');
           }catch(error){
             print('error is '+error);
           }
           */
           getName().then((value) {
             var name= getName();
             print(name);
             print('Annosa');
             // throw('غلط غلط غلط');
           }).catchError((error){
             print('Error is : '+error.toString());
           });
         },
       ),
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         currentIndex: currentIndex,
         onTap: (index){
           setState(() {
             currentIndex=index;
           });
           print(index);
         },
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.menu),
             label: 'Tasks'
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.check_circle_outline),
               label: 'Done'
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.archive_outlined),
               label: 'Archived'
           ),
         ],
       ),
     );

   }
}
void creatDatabase()async{
  var database = await openDatabase
    (
      'todo.db',
      version: 1,
      onCreate: (database,version){
      print('Database Created');
      database.execute('id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXTL , status TEXT')
          .then((value) => (){
        print('Table Created');
      }).catchError((error){
        print('creating table error is ${error.toString()}');
      });
      },
      onOpen: (database){
        print('Database opened');
      });

}
 