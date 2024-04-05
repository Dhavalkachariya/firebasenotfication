import 'package:flutter/material.dart';



class notification_screen extends StatefulWidget{
  final String payload;
  const notification_screen({super.key,required this.payload});

  State<notification_screen> createState() => _notification_screenState();

}

class _notification_screenState extends State<notification_screen>{
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('notification'),
        // ),
        body: Column(
          children: [
            Text(
              widget.payload,
              style: Theme.of(context).textTheme.subtitle1,
            ),

          CircleAvatar(
            child: Text('D',style: TextStyle(fontSize: 50,color: Colors.white),) ,
            backgroundColor: Colors.orange,
            maxRadius: 50.0,

          ),
          SizedBox(
            height: 30,
          ),

          Text("Dhaval Kachariya",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

          Padding(
              padding: EdgeInsets.only(top: 380),
            child: Row(

              children: [
                MaterialButton(
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red
                        ),
                        child: Icon(Icons.phone),
                      ),
                    )
                ),

                MaterialButton(
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 50),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green
                        ),
                        child: Icon(Icons.phone),
                      ),
                    )
                ),


                MaterialButton(
                    onPressed: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 30),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueAccent
                        ),
                        child: Icon(Icons.video_call),
                      ),
                    )
                )

              ],
            ),
          )



          ],
        ),


      ),
    );
  }

}