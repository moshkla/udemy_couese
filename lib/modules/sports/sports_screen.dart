import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/layout/news_app/cubit/cubit.dart';
import 'package:udemy_couese/layout/news_app/cubit/states.dart';
import 'package:udemy_couese/shared/components/components.dart';

class SportsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
        listener:(context,state){},
        builder: (context,state){
          NewsCubit cubit = NewsCubit.get(context);
          var list=cubit.sports;
          return articleBuilder(list,context);
        }

    );
  }
}
