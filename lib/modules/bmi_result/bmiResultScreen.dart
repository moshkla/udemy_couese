import 'package:flutter/material.dart';

class BmiResultPage extends StatelessWidget {
final bool isMale;
final double result;
final int age;

BmiResultPage({
  @required this.result,
  @required this.isMale,
  @required this.age,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${isMale?'MALE':'FEMALE'}" , style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0
            ),),
            Text('Age : $age' , style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
            ),),
            Text('Result : $result' , style:  TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
            ),),


          ],
        ),
      ),
    );
  }
}
