

import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
  final String id ;
  const MessageScreen({Key? key , required this.id}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Message Screen' +widget.id)  ,
        // ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              colors: [
                Colors.red,
                Colors.blue,
              ]
            )
          ),
          child: Column(
            children: [
              Text(
                widget.id,
                style: Theme.of(context).textTheme.subtitle1,
              ),

              const CircleAvatar(
                backgroundColor: Colors.orange,
                maxRadius: 50.0,
                child: Text('D',style: TextStyle(fontSize: 50,color: Colors.white),) ,

              ),
             const  SizedBox(
                height: 30,
              ),

              const Text("Dhaval Kachariya",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

              Padding(
                padding: const EdgeInsets.only(top: 370),
                child: Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:20,left: 30),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.red,
                              ),
                              child: const Icon(Icons.phone),
                            ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 20,left: 30),
                        child: MaterialButton(
                            onPressed: (){

                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green
                              ),
                              child: const Icon(Icons.phone),
                            )
                        ),
                      ),


                      Padding(
                        padding: const EdgeInsets.only(bottom: 20,left: 30),
                        child: MaterialButton(
                            onPressed: (){},
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blueAccent
                              ),
                              child: const Icon(Icons.video_call),
                            )
                        ),
                      )

                    ],
                  ),

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
