import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';
import 'package:task_manager/presentation/widget/profile_bar.dart';

import '../widget/task_card.dart';
import '../widget/task_counter_card.dart';
class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({Key? key}) : super(key: key);

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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



