import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.favorite,
        ),
        actions: [
          IconButton(icon: Icon(Icons.ac_unit) ,onPressed: (){ print('msa clicked');},),
          IconButton(icon: Icon(Icons.watch_later),onPressed: (){
            print('hello');
          },),


        ],
        title: Text(
          'Anas'
        ),

      ),
      body: Container(
        width: 300,
        color: Colors.black,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                  color: Colors.lightBlue,
                  child: Text(
                    'data',style:TextStyle
                    (color: Colors.teal,fontSize: 50
                  )
                    ,),

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.purple,
                child: Text(
                  'data',style:TextStyle
                  (color: Colors.teal,fontSize: 50
                )
                  ,),

              ),
            ),
            Container(
              color: Colors.deepPurpleAccent,
              child: Text(
                'data',style:TextStyle
                (color: Colors.teal,fontSize: 50
              )
                ,),

            ),

          ],
        ),
      ),
    );
  }

}