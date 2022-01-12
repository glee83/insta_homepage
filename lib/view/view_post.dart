import 'package:flutter/material.dart';

class ViewPageScreen extends StatelessWidget {

  
   ViewPageScreen({ Key? key, required this.userName}) : super(key: key);

  String userName;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text(
          'welcome $userName'
        ) ,),
      body: const Center(
        child: Text('welcome to view page.'),
      )
    );
  }
}