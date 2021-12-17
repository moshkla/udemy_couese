import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/layout/news_app/cubit/cubit.dart';
import 'package:udemy_couese/layout/news_app/cubit/states.dart';
import 'package:udemy_couese/shared/components/components.dart';

class SearchScreen extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        NewsCubit cubit = NewsCubit.get(context);
        var list = cubit.search;
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defaultFormField(
                    controller: searchController,
                    type: TextInputType.text,
                    validate: (String value) {
                      if (value.isEmpty) {
                        return 'search must not be empty';
                      }
                      return null;
                    },
                    label: 'Enter search here',
                    prefix: Icons.search,
                    onChange: (value) {
                      print(value);
                      cubit.getSearcheData(value);
                    }),
              ),
              Expanded(child: articleBuilder(list,context)),
            ],
          ),
        );
      },
    );
  }
}
