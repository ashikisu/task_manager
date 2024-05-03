import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_manager/presentation/utils/app_colors.dart';
import 'package:task_manager/presentation/widget/background_widget.dart';
import 'package:task_manager/presentation/widget/profile_bar.dart';

import '../widget/task_card.dart';
import '../widget/task_counter_card.dart';
class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: profileAppBar,
      body: BackgroundWidget(

            child:Column(
            children: [
              taskCounterSection,
              Expanded(
          
                  child:ListView.builder(
                      itemCount: 6,
                      itemBuilder: (context,index){
          
                    return TaskCard();
              }
               )
              )
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add,color: Colors.white,),
        backgroundColor: AppColors.themeColor,

      ),

    );
  }
  Widget get taskCounterSection{
    return SizedBox(
      height: 100,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.separated(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return const TaskCounterCard(
                title:'New' , amount: 23,
              );
            },
            separatorBuilder: (_,__){
              return SizedBox(width:10);
            }),
      ),
    );

  }
}



