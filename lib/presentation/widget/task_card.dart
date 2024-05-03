import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('The Title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            Text('Description'),
            Text('03-05-2024'),
            Row(
              children: [
                Chip(label: Text('new')),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline)),
              ],
            )

          ],                    ),
      ),
    );
  }
}