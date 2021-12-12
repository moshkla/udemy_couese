
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 0.0,
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
            ),
            SizedBox(width: 30.0,),
            Text('Chats' ,style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,

            ),
            ),
          ],

        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.blue,
              child:Icon(Icons.camera_alt,
              size: 20.0,
              color: Colors.white,) ,
            ),
            onPressed: (){

          },
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 40.0,
              backgroundColor: Colors.blue,
              child:Icon(Icons.edit,
                size: 20.0,
                color: Colors.white,) ,
            ),
            onPressed: (){

            },
          ),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[300],

                ),
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.black,

                    ),
                    SizedBox(width: 15.0,),
                    Text('Search ...',style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),)
                  ],
                ),
              ),
              SizedBox(height: 8.0,),
             /* SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      width: 60.0,
                      child: Column(
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.bottomEnd,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                              ),
                              CircleAvatar(
                                radius: 9,
                                backgroundColor: Colors.white,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.green,
                              ),

                            ],
                          ),
                          SizedBox(height: 5.0),
                          Text('Anas Abd Elazim Elmonir',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,),

                        ],
                      ),
                    ),
                  ],
                ),
              ),*/
              Container(
                height: 109,
                child: ListView.separated(
                  itemBuilder: (context,index)=>buildStoryItem(),
                separatorBuilder: (context,index)=>SizedBox(width: 20.0,),
                itemCount: 10,
                scrollDirection: Axis.horizontal,),
              ),
              SizedBox(height: 40.0,),
             /* Expanded(
                child: SingleChildScrollView(
                  child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Text('Anas Abd Elazim',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,

                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,),
                            SizedBox(height: 5,),
                            Row(
                              children: [
                                Expanded(child: Text('Hello there My name is ANAS',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,)),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    width: 7.0,
                                    height: 7.0,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                                Text('02.00 PM'),
                              ],
                            ),

                          ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Row(
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.bottomEnd,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
                            ),
                            CircleAvatar(
                              radius: 9,
                              backgroundColor: Colors.white,
                            ),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                            ),

                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Anas Abd Elazim',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,

                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,),
                              SizedBox(height: 5,),
                              Row(
                                children: [
                                  Expanded(child: Text('Hello there My name is ANAS',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      width: 7.0,
                                      height: 7.0,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  Text('02.00 PM'),
                                ],
                              ),

                            ],),
                        ),


                      ],
                    ),
                  ],
                ),
                ),
              ),*/
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index)=>buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(height: 20,),
                  itemCount: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget buildChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
          ),
          CircleAvatar(
            radius: 9,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.green,
          ),

        ],
      ),
      SizedBox(width: 15.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Anas Abd Elazim',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,

              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(child: Text('Hello there My name is ANAS',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 7.0,
                    height: 7.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text('02.00 PM'),
              ],
            ),

          ],),
      ),


    ],
  );
  Widget buildStoryItem()=>Container(
    width: 60.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://www.shaadidukaan.com/vogue/wp-content/uploads/2019/08/hug-kiss-images.jpg'),
            ),
            CircleAvatar(
              radius: 9,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 8,
              backgroundColor: Colors.green,
            ),

          ],
        ),
        SizedBox(height: 5.0),
        Text('Anas Abd Elazim Elmonir',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,),

      ],
    ),
  );

}
