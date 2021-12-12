import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:udemy_couese/modules/bmi_result/bmiResultScreen.dart';
import 'package:udemy_couese/modules/bmi/bmiScreen.dart';
import 'package:udemy_couese/modules/counter/counterScreen.dart';
import 'package:udemy_couese/modules/login/loginScreen.dart';
import 'package:udemy_couese/modules/messenger/messengerScreen.dart';
import 'package:udemy_couese/modules/users/usersScreen.dart';
import 'package:device_preview/device_preview.dart';
import 'layout/home_layout.dart';
import 'modules/home/homePage.dart';

void main() {
  runApp(MyApp(),);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: HomeLayout(),
  );
  }

}

