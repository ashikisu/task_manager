import 'package:flutter/material.dart';

import '../widget/background_widget.dart';
import '../widget/profile_bar.dart';
import '../widget/task_card.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
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
