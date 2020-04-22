import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
      child:Container(
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Text("Flight",textDirection: TextDirection.ltr,)
    )
    );
  }
}