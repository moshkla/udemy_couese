import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/shared/components/components.dart';
import 'package:udemy_couese/shared/components/constants.dart';
import 'package:udemy_couese/shared/cubit/cubit.dart';
import 'package:udemy_couese/shared/cubit/states.dart';

class ArchivedTasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archiveTasks;
        return tasksBuilder(tasks);
      },
    );
  }
}
