import 'package:flutter/material.dart';

import '../widget/background_widget.dart';
import '../widget/profile_bar.dart';
import '../widget/task_card.dart';

class ProgressTaskScreen extends StatefulWidget {
  const ProgressTaskScreen({super.key});

  @override
  State<ProgressTaskScreen> createState() => _ProgressTaskScreenState();
}

class _ProgressTaskScreenState extends State<ProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(
          child:ListView.builder(
              itemCount: 6,
              itemBuilder: (context,index){

                return TaskCard();
              }
          )
      ),


    );
  }
}
