import 'package:flutter/material.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({Key? key}) : super(key: key);

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _currenSelectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currenSelectedIndex,
        selectedItemColor: AppColors.themeColor,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (index){
          _currenSelectedIndex=index;
          if(mounted){
            setState(() {

            });
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.task),label: 'New Task'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all),label: 'Completed'),
          BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel),label: 'Cancel'),
        ],
      ),
    );
  }
}
