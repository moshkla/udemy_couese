import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_couese/modules/archive_tasks/ArchivedTasksScreen.dart';
import 'package:udemy_couese/modules/done_task/doneTasksScreen.dart';
import 'package:udemy_couese/modules/new_tasks/NewTasksScreen.dart';
import 'package:udemy_couese/shared/cubit/states.dart';
import 'package:udemy_couese/shared/network/local/cashe_helper.dart';

class AppCubit extends Cubit<AppStates> {
  Database database;
  List<Map> newTasks = [];
  List<Map> doneTasks = [];
  List<Map> archiveTasks = [];

  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark=false;
  void changeAppMode(){
    isDark=!isDark;
    CasheHelper.putData(key: 'isDark', boolValue: isDark).then((value) {
      emit(AppChangeModeState());
    });

  }
  int currentIndex = 0;
  List<Widget> screens = [
    NewTasksPage(),
    DoneTasksPage(),
    ArchivedTasksPage(),
  ];
  List<String> titles = ['New Tasks', 'Done Tasks', 'Archived Tasks'];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottonNavBarState());
  }

  void creatDatabase() {
    openDatabase('todo.db', version: 1, onCreate: (database, version) {
      print('Database Created');
      database
          .execute(
              'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXTL , status TEXT)')
          .then((value) => () {
                print('Table Created');
              })
          .catchError((error) {
        print('creating table error is ${error.toString()}');
      });
    }, onOpen: (database) {
      print('Database opened');
      getDataFromDatabase(database);
    }).then((value) {
      database = value;
      emit(AppCreateDatabaseState());
    });
  }

  Future inserToDatabase(
      {@required title, @required date, @required time}) async {
    await database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO tasks(title,date,time,status) VALUES("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully');
        emit(AppInsertDatabasState());
        getDataFromDatabase(database);
      }).catchError((error) {
        print('Error in inserting new record ${error.toString()}');
      });
      return null;
    });
  }

  void getDataFromDatabase(database) {
    newTasks.clear();
    doneTasks.clear();
    archiveTasks.clear();
    emit(AppGetDatabasLoadingState());
    database.rawQuery('SELECT * FROM tasks').then((value) {
      value.forEach((element) {
        if (element['status'] == 'done') {
          doneTasks.add(element);
        } else if (element['status'] == 'archive') {
          archiveTasks.add(element);
        } else
          newTasks.add(element);
      });
      emit(AppGetDatabasState());
    });
  }

  bool isBottomSheetShown = false;
  Icon fabIcon = Icon(Icons.edit);

  void changeBottomSheetValue(
    @required bool isShown,
    @required Icon icon,
  ) {
    isBottomSheetShown = isShown;
    fabIcon = icon;
    emit(AppChangeIconBottomSheetState());
  }

  // Update some record

  void updateDatabase(
    @required int id,
    @required String status,
  ) {
    database.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id]).then((value) {
      getDataFromDatabase(database);
      emit(AppUpdateDatabasState());
    });
  }

  void deleteDatabase(
    @required int id,
  ) {
    database.rawDelete('DELETE FROM tasks WHERE id = ?', [id]).then((value) {
      getDataFromDatabase(database);
      emit(AppDeleteDatabasState());
    });
  }
}
