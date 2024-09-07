import 'package:flutter/material.dart';
import 'package:login_screen_first_project/Reset%20Password.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
      child: Column(
      children:[
      Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Center(
      child: Container(
      width: 400,
      height: 100,
      child:Image.asset(
          'assets/login pic.png'
      ),),
      ),
      ),
      SizedBox(height: 15,),
      Text("Welcome Back!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.blue),),
      SizedBox(
        height: 30,
      ),

      Padding(
      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
      decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'E-mail',
      hintText: 'username@example.com'),
    ),
    ),
    Padding(
    padding: const EdgeInsets.only(
    left: 15.0, right: 15.0, top: 15, bottom: 0),
    //padding: EdgeInsets.symmetric(horizontal: 15),
    child: TextField(

    obscureText: true,
    decoration: InputDecoration(
    border: OutlineInputBorder(),
    labelText: 'Password',
    hintText: 'Enter your password'),
    ),
    ),

    SizedBox(
    height: 65,
    width: 310,
    child: Container(
    child: Padding(
    padding: const EdgeInsets.only(top: 20.0),
    child: ElevatedButton(
    child: Text( 'Log in ', style: TextStyle(color: Colors.white, fontSize: 20),
    ),
    onPressed: (){},


    ),
    ),
    ),
    ),

    SizedBox(
    height: 40,
    ),
    Container(
    child: Center(
    child: Row(
    children: [

    Padding(
    padding: const EdgeInsets.only(left: 55),
    child: Text('Forgot your password? '),
    ),

    Padding(
    padding: const EdgeInsets.only(left:1.0),
    child: InkWell(
    onTap: (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context) => const reset()),
      );
    },
    child: Text('Reset Password', style: TextStyle(fontSize: 14, color: Colors.blue),)),
    )
    ],
    ),
    )
    )
    ],
    ),
      )
    );
  }
}
