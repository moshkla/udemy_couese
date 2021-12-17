
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/modules/counter/cubit/cubit.dart';
import 'package:udemy_couese/modules/counter/cubit/states.dart';

class CounterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state){},
        builder: (context,state){
          return  Scaffold(
            appBar: AppBar(
              title: Text('Counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: ()
                  {
                    CounterCubit.get(context).minus();

                  },
                      child: Text('MINUS',style: TextStyle(
                          fontSize: 20.0
                      ),)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('${CounterCubit.get(context).counter}',
                      style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,

                    ),),
                  ),
                  TextButton(onPressed: ()
                  {
                    CounterCubit.get(context).plus();

                  }, child: Text('PLUS',style: TextStyle(
                    fontSize: 20.0,
                  ),)),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}


