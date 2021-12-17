import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/modules/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialStates());
  static CounterCubit get(context) => BlocProvider.of(context);
  int counter=1;
  void plus(){
    counter++;
    emit(CounterPlusStates(counter));
  }
  void minus(){
    counter--;
    emit(CounterMinusStates(counter));
  }
}