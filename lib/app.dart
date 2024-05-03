import 'package:flutter/material.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'presentation/screens/auth/splash_screen.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({Key? key}) : super(key: key);
  static GlobalKey<NavigatorState> navigatorKey= GlobalKey<NavigatorState>();

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: TaskManager.navigatorKey,
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
            fontSize: 35,
            fontWeight: FontWeight.w600,),
        ),

        chipTheme: ChipThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50)
          )
        )



    ),
    );
  }
}
