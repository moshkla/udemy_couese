import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double btnWidth = double.infinity,
  Color btnBackground= Colors.blue,
  bool toUppercase =true,
  @required String btnText,
  @required Function function,

})=>Container(
  width: btnWidth,
  decoration: BoxDecoration(
    color: btnBackground,
    borderRadius: BorderRadius.circular(10)
  ),
  child: MaterialButton(
    height: 40,
    onPressed: function,
    child: Text(toUppercase ?btnText.toUpperCase():btnText
    )
    ,textColor: Colors.white,),
);

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  bool isPassword=false,
  IconData suffix,
  Function suffixPressed,
}
    )=>TextFormField(
  obscureText: isPassword,
  controller: controller,
  keyboardType: type,
  onFieldSubmitted: onSubmit,
  validator:validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: Icon(prefix),
    suffixIcon: suffix !=null ? IconButton(onPressed:suffixPressed,icon: Icon(suffix)):null,

    border: OutlineInputBorder(),
  ),
);