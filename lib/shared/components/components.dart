import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_couese/shared/cubit/cubit.dart';

Widget defaultButton({
  double btnWidth = double.infinity,
  Color btnBackground = Colors.blue,
  bool toUppercase = true,
  @required String btnText,
  @required Function function,
}) =>
    Container(
      width: btnWidth,
      decoration: BoxDecoration(
          color: btnBackground, borderRadius: BorderRadius.circular(10)),
      child: MaterialButton(
        height: 40,
        onPressed: function,
        child: Text(toUppercase ? btnText.toUpperCase() : btnText),
        textColor: Colors.white,
      ),
    );

Widget defaultFormField({
  @required TextEditingController controller,
  @required TextInputType type,
  Function onSubmit,
  Function onChange,
  @required Function validate,
  @required String label,
  @required IconData prefix,
  bool isPassword = false,
  IconData suffix,
  Function suffixPressed,
  Function onTap,
}) =>
    TextFormField(
      obscureText: isPassword,
      controller: controller,
      keyboardType: type,
      onFieldSubmitted: onSubmit,
      validator: validate,
      onTap: onTap,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(onPressed: suffixPressed, icon: Icon(suffix))
            : null,
        border: OutlineInputBorder(),
      ),
    );

Widget buildTaskItem(Map model, context) => Dismissible(
  key: Key(model['id'].toString()),
  child:   Padding(

        padding: const EdgeInsets.all(20.0),

        child: Row(

          children: [

            CircleAvatar(

              radius: 40.0,

              child: Text(

                '${model['time']}',

                style: TextStyle(

                  color: Colors.white,

                ),

              ),

            ),

            SizedBox(

              width: 20.0,

            ),

            Expanded(

              child: Column(

                mainAxisSize: MainAxisSize.min,

                children: [

                  Text('${model['title']}'),

                  Text(

                    '${model['date']}',

                    style: TextStyle(

                      fontSize: 15.0,

                      color: Colors.grey,

                    ),

                  ),

                ],

              ),

            ),

            SizedBox(

              width: 20.0,

            ),

            IconButton(

              onPressed: () {

                AppCubit.get(context).updateDatabase(model['id'], 'done');

              },

              icon: Icon(

                Icons.check_box,

                color: Colors.green,

              ),

            ),

            IconButton(

                onPressed: () {

                  AppCubit.get(context).updateDatabase(model['id'], 'archive');

                },

                icon: Icon(

                  Icons.archive,

                  color: Colors.black26,

                )),

          ],

        ),

      ),
  onDismissed: (direction){
    AppCubit.get(context).deleteDatabase(model['id']);
  },
);
Widget tasksBuilder(List<Map> tasks){
  return ConditionalBuilder(
    condition:tasks.length > 0  ,
    builder:(context)=>ListView.separated(
        itemBuilder: (context, index) => buildTaskItem(tasks[index],context),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            height: 1.0,
            color: Colors.grey,
          ),
        ),
        itemCount: tasks.length),
    fallback:(context)=>Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.ac_unit_sharp),
          Text('nothing in Tasks Please Add one')
        ],
      ),
    ) ,
  );
}
Widget buildArticleItem(articles,context)=>Padding(
  padding: const EdgeInsets.all(20.0),
  child: Row(
    children: [
      Container(
        height: 120.0,
        width: 120.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: NetworkImage(
                '${articles['urlToImage']}'
            ),
            fit: BoxFit.cover,

          ),
        ),
      ),
      SizedBox(width: 20.0,),
      Expanded(

        child: Container(
          height: 120.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  '${articles['title']}',
                  style: Theme.of(context).textTheme.bodyText1,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '${articles['publishedAt']}',
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),

            ],
          ),
        ),
      ),
    ],
  ),
);
Widget myDivivder()=>Padding(
  padding: const EdgeInsetsDirectional.only(
    start: 20.0,
  ),
  child: Container(
    width: double.infinity,
    height: 1.0,
    color: Colors.grey[300],
  ),
);
Widget articleBuilder(list,context)=>ConditionalBuilder(
  condition: list.length>0,
  builder: (context)=> ListView.separated(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context,index)=> buildArticleItem(list[index],context),
      separatorBuilder: (context,index)=>myDivivder(),
      itemCount: list.length),
  fallback: (context)=> Center(child: CircularProgressIndicator()),
);

void navigateTo(context,widget)=>
  Navigator.push(context,
      MaterialPageRoute(builder: (context)=>widget));
