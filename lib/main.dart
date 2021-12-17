import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udemy_couese/layout/news_app/news_layout.dart';
import 'package:udemy_couese/modules/bmi_result/bmiResultScreen.dart';
import 'package:udemy_couese/modules/bmi/bmiScreen.dart';
import 'package:udemy_couese/modules/counter/counterScreen.dart';
import 'package:udemy_couese/modules/counter/cubit/cubit.dart';
import 'package:udemy_couese/modules/login/loginScreen.dart';
import 'package:udemy_couese/modules/messenger/messengerScreen.dart';
import 'package:udemy_couese/modules/users/usersScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:udemy_couese/shared/bloc_observer.dart';
import 'package:udemy_couese/shared/components/constants.dart';
import 'package:udemy_couese/shared/cubit/cubit.dart';
import 'package:udemy_couese/shared/cubit/states.dart';
import 'package:udemy_couese/shared/network/local/cashe_helper.dart';
import 'package:udemy_couese/shared/network/remote/dio_helper.dart';
import 'layout/news_app/cubit/cubit.dart';
import 'layout/todo_app/todo_layout.dart';
import 'modules/home/homePage.dart';

void main()async {
  DioHelper.init();
  WidgetsFlutterBinding.ensureInitialized();
  await CasheHelper.init();

  BlocOverrides.runZoned(
        () {
      // Use cubits...
          runApp(
            MyApp()
          );
    },
    blocObserver: MyBlocObserver(),

  );

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (create)=> NewsCubit()..getBusinessData()),
        BlocProvider(create: (BuildContext context) =>AppCubit()),
      ],
      child: BlocConsumer<AppCubit,AppStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit=AppCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.deepOrange,
              textTheme: TextTheme(
                bodyText1: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepOrange
              ),
              scaffoldBackgroundColor: Colors.white,
              appBarTheme: AppBarTheme(
                titleSpacing: 20.0,
                backwardsCompatibility: false,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarIconBrightness: Brightness.dark,
                ),
                backgroundColor: Colors.white,
                elevation: 0.0,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(
                  color: Colors.black,
                ),
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.deepOrange,
                unselectedItemColor: Colors.grey,
                elevation: 20.0,
                backgroundColor: Colors.white,

              ),
            ),
            darkTheme: ThemeData(
              primarySwatch: Colors.deepOrange,
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                  backgroundColor: Colors.deepOrange
              ),
              scaffoldBackgroundColor: HexColor('333739'),
              appBarTheme: AppBarTheme(
                titleSpacing: 20.0,
                backwardsCompatibility: false,
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: HexColor('333739'),
                  statusBarIconBrightness: Brightness.light,
                ),
                backgroundColor: HexColor('333739'),
                elevation: 0.0,
                titleTextStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                iconTheme: IconThemeData(
                  color: Colors.white,
                ),
              ),
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.fixed,
                selectedItemColor: Colors.deepOrange,
                unselectedItemColor: Colors.grey,
                elevation: 20.0,
                backgroundColor: HexColor('333739'),

              ),
              textTheme: TextTheme(
                bodyText1: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            themeMode: getbool()?ThemeMode.dark:ThemeMode.light,

            home: NewsLayout(),
          );
        }
      ),
    );
  }
}
