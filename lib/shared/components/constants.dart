import 'package:udemy_couese/shared/network/local/cashe_helper.dart';

bool getbool(){
  switch( CasheHelper.getData(key: "isDark") ){
    case true :
      return true;
    case false:
      return false;
    default:
      return true;
  }
}