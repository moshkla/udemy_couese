import 'dart:io';

import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_couese/modules/archive_tasks/ArchivedTasksScreen.dart';
import 'package:udemy_couese/modules/done_task/doneTasksScreen.dart';
import 'package:udemy_couese/modules/new_tasks/NewTasksScreen.dart';
import 'package:udemy_couese/shared/components/components.dart';
import 'package:udemy_couese/shared/components/constants.dart';
import 'package:udemy_couese/shared/cubit/cubit.dart';
import 'package:udemy_couese/shared/cubit/states.dart';

class HomeLayout extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();

  var titleController = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

  // @override
  // void initState() {
  //   creatDatabase();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..creatDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {
          if(state is AppInsertDatabasState){
                 Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
                title: Text(
              cubit.titles[cubit.currentIndex],
            )),
            body: ConditionalBuilder(
              condition: state is!AppGetDatabasLoadingState,
              builder: (context) => cubit.screens[cubit.currentIndex],
              fallback: (context) => Center(child: CircularProgressIndicator()),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (cubit.isBottomSheetShown) {
                  if (formKey.currentState.validate()) {
                    cubit.inserToDatabase(
                        title: titleController.text,
                        date: dateController.text,
                        time: timeController.text);
                  }
                  //   inserToDatabase(
                  //           title: titleController.text,
                  //           date: dateController.text,
                  //           time: timeController.text)
                  //       .then((value) {
                  //     Navigator.pop(context);
                  //     getDataFromDatabase(database).then((value) {
                  //       isBottomSheetShown = false;
                  //       // setState(() {
                  //       //   fabIcon = Icon(Icons.edit);
                  //       //   tasks = value;
                  //       //   print(tasks);
                  //       // });
                  //     });
                  //   });

                } else {
                  scaffoldKey.currentState
                      .showBottomSheet(
                          (context) => Container(
                                color: Colors.white,
                                padding: EdgeInsets.all(20.0),
                                child: Form(
                                  key: formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      defaultFormField(
                                          controller: titleController,
                                          type: TextInputType.text,
                                          validate: (String value) {
                                            if (value.isEmpty) {
                                              return 'title required';
                                            }
                                            return null;
                                          },
                                          label: 'Task Title',
                                          prefix: Icons.title),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      defaultFormField(
                                          controller: timeController,
                                          type: TextInputType.datetime,
                                          onTap: () {
                                            showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now(),
                                            ).then(
                                              (value) {
                                                timeController.text =
                                                    value.format(context);
                                              },
                                            );
                                          },
                                          validate: (String value) {
                                            if (value.isEmpty) {
                                              return 'Time required';
                                            }
                                            return null;
                                          },
                                          label: 'Task Time',
                                          prefix: Icons.watch_later_outlined),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      defaultFormField(
                                        controller: dateController,
                                        type: TextInputType.datetime,
                                        onTap: () {
                                          showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime.now(),
                                            lastDate:
                                                DateTime.parse('2022-02-11'),
                                          ).then((value) {
                                            dateController.text =
                                                DateFormat.yMMMd()
                                                    .format(value);
                                          });
                                        },
                                        validate: (String value) {
                                          if (value.isEmpty) {
                                            return 'Date required';
                                          }
                                          return null;
                                        },
                                        label: 'Task Date',
                                        prefix: Icons.calendar_today,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                          elevation: 15.0)
                      .closed
                      .then((value) {
                    cubit.changeBottomSheetValue(false, Icon(Icons.edit));
                  });
                  cubit.changeBottomSheetValue(true, Icon(Icons.add));
                }

              },
              child: cubit.fabIcon,
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: AppCubit.get(context).currentIndex,
              onTap: (index) {
                AppCubit.get(context).changeIndex(index);
                // setState(() {
                //   currentIndex = index;
                // });
                print(index);
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Tasks'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.check_circle_outline), label: 'Done'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive_outlined), label: 'Archived'),
              ],
            ),
          );
        },
      ),
    );
  }
}

Future<String> getName() async {
  return 'Anas Abd Elazim';
}
