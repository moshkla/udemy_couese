import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/layout/news_app/cubit/cubit.dart';
import 'package:udemy_couese/modules/search/search_screen.dart';
import 'package:udemy_couese/shared/components/components.dart';
import 'package:udemy_couese/shared/cubit/cubit.dart';
import 'package:udemy_couese/shared/network/remote/dio_helper.dart';

import 'cubit/states.dart';

class NewsLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = NewsCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text('News Layout'),
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    navigateTo(context, SearchScreen());
                  },
                ),
                IconButton(
                  icon: Icon(Icons.brightness_4_outlined),
                  onPressed: () {
                    AppCubit.get(context).changeAppMode();
                  },
                ),

              ],
            ),
            body: cubit.screen[cubit.currentIndex],

            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomItems,
              onTap: (value) {
                cubit.changeBottomNavBar(value);
              },
              currentIndex: cubit.currentIndex,
            ),
          );
        });
  }
}
