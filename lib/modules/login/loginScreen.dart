
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udemy_couese/shared/components/components.dart';

class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController =TextEditingController();

  var passwordController =TextEditingController();

  var formKey=GlobalKey<FormState>();

  bool hidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('LoginPage'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Login' ,style:
                    TextStyle(
                      color: Colors.black,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,

                    ),),
                  SizedBox(height: 40.0,),
                  defaultFormField(
                    controller: emailController,
                    label: 'Email Address',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (String value){
                      if(value.isEmpty){
                        return 'email is required';
                      }
                      return null;
                    }
                  ),
                  SizedBox(height: 20.0,),
                  defaultFormField(
                      controller: passwordController,
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: hidden?Icons.remove_red_eye:Icons.remove_red_eye_outlined,
                      suffixPressed: (){
                        setState(() {
                          hidden=(!hidden);
                        });
                      },
                      type: TextInputType.visiblePassword,
                      isPassword: hidden,

                      validate: (String value){
                        if(value.isEmpty){
                          return 'password is required';
                        }
                        return null;
                      }
                  ),
                  SizedBox(height: 20.0),
                  //btn
                  defaultButton(
                    btnText: "Login",
                    function: (){
                      if(formKey.currentState.validate())
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                  SizedBox(height: 20.0,),

                  defaultButton(
                    btnText: "Register",
                    function: (){
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't Have Account !",style: TextStyle(
                          color: Colors.grey
                        ),),
                        SizedBox(width: 20),
                        Text('Register',style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}