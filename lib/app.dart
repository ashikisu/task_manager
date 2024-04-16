import 'package:flutter/material.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'presentation/screens/splash_screen.dart';

class TaskManager extends StatelessWidget {
  const TaskManager({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Managers',
      home:const SplashScreen(),
      theme:ThemeData(
        inputDecorationTheme:InputDecorationTheme(
          contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          fillColor:Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
        ),
       ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor:AppColors.themeColor,
          ),

        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
         foregroundColor:AppColors.themeColor ,
        ),
     ) ,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w600,),
        ),



    ),
    );
  }
}
