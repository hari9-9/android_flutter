import 'package:flutter/material.dart';
import 'package:first_build/screens/note_detail.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('FAB pressed');
          navigateToDetail('Add note');

        },
        tooltip: 'Add note',
        child: Icon(Icons.add),
      ),
    );
  }

  ListView getNoteListView() {
    TextStyle titleStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text(
              'Dummy title',
              style: titleStyle,
            ),
            subtitle: Text("Dummy date"),
            trailing: Icon(Icons.delete, color: Colors.grey),
            onTap: () {
              debugPrint("tile pressed");
              navigateToDetail('Edit note');
            },
          ),
        );
      },
    );
  }
  void navigateToDetail(String title)
  {
     Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NoteDetail(title);
          }));
  }
}
