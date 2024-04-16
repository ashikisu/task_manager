import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/presentation/screens/sing_in_screen.dart';
import 'package:task_manager/presentation/utils/assets_path.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState(){
    super.initState();
    _moveToSingIn();


  }

  Future<void> _moveToSingIn() async{
    
    await Future.delayed(const Duration(seconds: 0));
    if(mounted){
      Navigator.pushReplacement(
          context as BuildContext ,MaterialPageRoute(builder: (context)=>SingInScreen()) );
    }


  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BackgroundWidget(
        child:  Center(
          child:
          Text("Ashik",
            style: TextStyle(
              fontSize: 100,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),

          ),

        ),

      ),






      );

  }
}
