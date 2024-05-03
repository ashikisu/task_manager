
import 'package:flutter/material.dart';
import 'package:task_manager/app.dart';

import '../screens/auth/sing_in_screen.dart';
import '../utils/app_colors.dart';

PreferredSizeWidget get profileAppBar{

  return  AppBar(
    backgroundColor: AppColors.themeColor,
    title: Row(
      children: [
        CircleAvatar(),

        SizedBox(width: 12,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ashik', style: TextStyle(fontSize: 16,color: Colors.white),),
              const Text('ashik.isubd@gmail.com',style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w400),),

            ],
          ),
        ),
        IconButton(onPressed: (){
          // Navigate from current page (context) to a new page (NewPage)
          Navigator.pushAndRemoveUntil(
            TaskManager.navigatorKey.currentState!.context,
            MaterialPageRoute(builder: (context) => SingInScreen()),(route)=>false
          );


        }, icon: Icon(Icons.logout)),
      ],
    ),
  );

}