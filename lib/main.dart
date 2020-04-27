import 'package:flutter/material.dart';
import 'package:first_build/screens/note_list.dart';

void main() {
  runApp(MyApp());
  
}


class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title:'Note keeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch:Colors.deepPurple,

      ),
      home: NoteList(),
      
    );
  }
  
}