
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter=1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: ()
            {
              setState(() {
                counter--;
                print(counter);
              });

            },
                child: Text('MINUS',style: TextStyle(
              fontSize: 20.0
            ),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('$counter',style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,

              ),),
            ),
            TextButton(onPressed: ()
            {
              setState(() {
                counter++;
                print(counter);
              });

            }, child: Text('PLUS',style: TextStyle(
              fontSize: 20.0,
            ),)),

          ],
        ),
      ),
    );
  }
}
