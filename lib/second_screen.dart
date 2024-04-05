import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:myproject/notification_service.dart';

import 'notificationn_screen.dart';



class Second_screen extends StatefulWidget{
  const Second_screen({super.key});
  
  State<Second_screen> createState() => _Second_screenState();

}

class _Second_screenState extends State<Second_screen>{

  // usernotification _usernotification = usernotification();
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _usernotification.intialiseNotifications();

    final AndroidInitializationSettings _androidInitializationSettings =
    AndroidInitializationSettings('img');



    InitializationSettings initializationSettings =
    InitializationSettings(
      android: _androidInitializationSettings,
    );

     flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
        onDidReceiveBackgroundNotificationResponse: onDidReceiveNotificationResponse
    );




  }



  void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
    final String? payload = notificationResponse.payload;
    if (notificationResponse.payload != null) {
      debugPrint('notification payload: $payload');
    }

    await Navigator.push(
      context,
      MaterialPageRoute<void>(builder: (context) => notification_screen(payload: payload??"")),
    );
  }


  void sendNotification(String title,String body) async{
    AndroidNotificationDetails androidNotificationDetails =
   const AndroidNotificationDetails(
        'channelId',
        'channelName',
        importance: Importance.max,
        priority: Priority.high,
    );


    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails
    );

    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      notificationDetails,
    );

  }



  void sendperiodicallyNotification(String title,String body) async{
    AndroidNotificationDetails androidNotificationDetails =
    const AndroidNotificationDetails(
      'channelId',
      'channelName',
      importance: Importance.max,
      priority: Priority.high,
    );


    NotificationDetails notificationDetails = NotificationDetails(
        android: androidNotificationDetails
    );

    await flutterLocalNotificationsPlugin.periodicallyShow(
      0,
      title,
      body,
      RepeatInterval.everyMinute,
      notificationDetails,
    );

  }






  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('notification screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(onPressed: (){
            // _usernotification.sendNotification(
            //     'this is title',
            //     'this is body'
            // );

            sendNotification(
                'this is title',
                'this is body'
            );
          },
          child: Center(
            child: Container(

              height: 50,
              width: 110,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child:Center(
                child:  Text("notification"),
              )
            ),
          ),),

          SizedBox(
            height: 20,
          ),
          MaterialButton(onPressed: (){
            sendperiodicallyNotification(
                'periodocally',
                'this is body'
            );
          },
            child: Center(
              child: Container(

                  height: 50,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Center(
                    child:  Text("every minute"),
                  )
              ),
            ),)
        ],
      ),
    );
  }



}