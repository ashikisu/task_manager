import 'package:flutter/material.dart';

class TaskCounterCard extends StatelessWidget {
  const TaskCounterCard({
    super.key, required this.amount, required this.title,
  });

  final int amount;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(

        padding: EdgeInsets.symmetric(horizontal: 21,vertical: 16),
        child: Column(
          children: [
            Text('$amount',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,

              ),),
            Text('$title',style: TextStyle(
                color: Colors.grey
            ),),

          ],
        ),
      ),
    );
  }
}
