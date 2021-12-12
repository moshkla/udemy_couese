import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_couese/modules/bmi_result/bmiResultScreen.dart';

class BmiPage extends StatefulWidget {
  const BmiPage({Key key}) : super(key: key);

  @override
  _BmiPageState createState() => _BmiPageState();
}

bool isMale=true;
double sliderHeight=220;
int age=20;
int weight=40;
class _BmiPageState extends State<BmiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                      isMale=true;
                      });
                    },
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/male-gender.png'),
                          height: 90.0,
                          width: 90,
                          ),
                          SizedBox(height: 15.0,),
                          Text("MALE",style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color:isMale? Colors.blue:Colors.grey[400],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isMale=false;
                      });
                    },
                    child: Container(

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/female.png'),
                            height: 90.0,
                            width: 90,
                          ),
                          SizedBox(height: 15.0,),
                          Text("FEMALE",style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold
                          ),),

                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale? Colors.blue:Colors.grey[400]
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[400]
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("HEIGHT",style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${sliderHeight.round()}',style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(width: 5.0,),
                        Text("cm",style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                    Slider(value: sliderHeight,
                      max: 220,
                      min: 110,
                      onChanged: (value){
                      setState(() {
                        sliderHeight=value;
                      });
                      print(value.round());
                      },
                    ),

                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.grey[400]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("AGE",style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Text("${age}",style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age--;
                              });
                            },
                              heroTag: 'age-',
                              mini: true,
                              child: Icon(Icons.remove),),
                            FloatingActionButton(onPressed: (){
                              setState(() {
                                age++;
                              });
                            },
                              heroTag: 'age+',

                              mini: true,
                              child: Icon(Icons.add),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                 child: Container(
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                     color: Colors.grey[400]
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("WEIGHT",style: TextStyle(
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold
                     ),),
                     Text("${weight}",style: TextStyle(
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold
                     ),),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         FloatingActionButton(onPressed: (){
                           setState(() {
                             weight--;
                           });
                         },
                           heroTag: 'weight-',
                           mini: true,
                           child: Icon(Icons.remove),),
                         FloatingActionButton(onPressed: (){
                           setState(() {
                             weight++;
                           });
                         },
                           heroTag: 'weight+',
                           mini: true,
                           child: Icon(Icons.add),),
                       ],
                     ),
                   ],
                 ),
               ),
               ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
                height: 60.0,
              onPressed: (){
                  double result=weight/pow(sliderHeight/ 100,2);
                  print(result.round());
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>BmiResultPage(
                      result: result.roundToDouble(),
                        isMale: isMale,
                          age: age,
                      )
                      ));
              },
              child:Text('Calculate',style: TextStyle(
                color: Colors.white,
              ),
              ),
           ),
          ),
        ],
      ),
    );
  }
}
