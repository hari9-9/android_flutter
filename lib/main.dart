import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      title: "Stateful App example",
      home:FavoriteCity(),

    )
  );
}


class FavoriteCity extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteCityState();
  }
  
}

class _FavoriteCityState extends State<FavoriteCity>
{
  String nameCity="";
  @override
  Widget build(BuildContext context) {
    debugPrint("Stateful widget created");
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful app example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children:<Widget>[
            TextField(
              onChanged:(String userInput){
                setState(() {
                  debugPrint("Stateful widget updated");
                  nameCity=userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child:Text(
              "your city is $nameCity",
              style: TextStyle(fontSize: 20.0),

            ))
          ],
        )
      ),
    );
  }
  
}
