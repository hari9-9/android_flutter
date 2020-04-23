import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Center(
        child: Container(
            alignment: Alignment.center,
            color: Colors.deepPurple,
            //width: 200.0,
            //height: 100.0,
            //margin:EdgeInsets.only(left:35.0,top: 50.0),

            child: Row(
              children: <Widget>[
                Expanded( child: Text(
                  "Spice jet",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                )),
                Expanded(child:Text(
                  "From Mumbai to Bangalore via New Delhi",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 20.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                )),
              ],
            )));
  }
}
