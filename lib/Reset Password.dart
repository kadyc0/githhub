import 'package:flutter/material.dart';
class reset extends StatelessWidget {
  const reset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Reset Password'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:[
              SizedBox(height: 140,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter your Email', style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                  ],
                ),
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

              SizedBox(
                height: 65,
                width: 310,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      child: Text( 'Verify ', style: TextStyle(color: Colors.white, fontSize: 20),
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
                          child: Text('Resend verification Email? '),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:1.0),
                          child: InkWell(
                              onTap: (){
                              },
                              child: Text('send again', style: TextStyle(fontSize: 14, color: Colors.blue),)),
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
