import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MyflutterApp()

		
	);
}

class MyflutterApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
			title: "My Flutter App",
			home: Scaffold(
				appBar: AppBar(title: Text("My First App Screen"),),
				body: Material(
					color: Colors.lightBlueAccent,
					child: Center(
						child: Text(
							"Hello Flutter",
							textDirection: TextDirection.ltr,
							style: TextStyle(color: Colors.white, fontSize: 40.0),
						),
					),
				),
			)
		);
  }

}