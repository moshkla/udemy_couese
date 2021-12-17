import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_couese/layout/news_app/cubit/states.dart';
import 'package:udemy_couese/modules/business/business_screen.dart';
import 'package:udemy_couese/modules/science/science_screen.dart';
import 'package:udemy_couese/modules/settings/settings_screen.dart';
import 'package:udemy_couese/modules/sports/sports_screen.dart';
import 'package:udemy_couese/shared/network/remote/dio_helper.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
    BottomNavigationBarItem(icon: Icon(Icons.sports), label: 'Sports'),
    BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Science'),
  ];

  void changeBottomNavBar(int index) {
    currentIndex = index;
    if (index == 1) {
      getSportsData();
    } else if (index == 2) {
      getScienceData();
    }
    emit(NewsBottomNavState());
  }

  List<Widget> screen = [
    BusinessScreen(),
    SportsScreen(),
    ScienceScreen(),
  ];
  List<dynamic> business = [];

  void getBusinessData() {
    emit(NewsBusinessLoadingState());
    if (business.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', qurey: {
        'country': 'eg',
        'category': 'business',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca'
      }).then((value) {
        business = value.data['articles'];
        emit(NewsGetBusinessSuccessState());
        print(business[0]['title']);
      }).catchError((error) {
        emit(NewsGetBusinessErrorState(error.toString()));
        print('error in get Business data is : $error');
      });
    } else {
      emit(NewsGetBusinessSuccessState());
    }
  }

  List<dynamic> sports = [];

  void getSportsData() {
    emit(NewsSportsLoadingState());
    if (sports.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', qurey: {
        'country': 'eg',
        'category': 'sports',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca'
      }).then((value) {
        sports = value.data['articles'];
        emit(NewsGetSportsSuccessState());
        print(sports[0]['title']);
      }).catchError((error) {
        emit(NewsGetSportsErrorState(error.toString()));
        print('error in get Sports data  is : $error');
      });
    } else {
      emit(NewsGetSportsSuccessState());
    }
  }

  List<dynamic> science = [];

  void getScienceData() {
    emit(NewsScienceLoadingState());
    if (science.length == 0) {
      DioHelper.getData(url: 'v2/top-headlines', qurey: {
        'country': 'eg',
        'category': 'science',
        'apiKey': '65f7f556ec76449fa7dc7c0069f040ca'
      }).then((value) {
        science = value.data['articles'];
        emit(NewsGetScienceSuccessState());
        print(science[0]['title']);
      }).catchError((error) {
        emit(NewsGetScienceErrorState(error.toString()));
        print('error in get Science data is : $error');
      });
    } else {
      emit(NewsGetScienceSuccessState());
    }
  }

  List<dynamic> search = [];

  void getSearcheData(String value) {
    emit(NewsSearchLoadingState());
    DioHelper.getData(url: 'v2/everything', qurey: {
      'q': '$value',
      'apiKey': '65f7f556ec76449fa7dc7c0069f040ca'
    }).then((value) {
      search = value.data['articles'];
      emit(NewsGetSearchSuccessState());
      print(search[0]['title']);
    }).catchError((error) {
      emit(NewsGetSearchErrorState(error.toString()));
      print('error in get search data is : $error');
    });
  }
}
