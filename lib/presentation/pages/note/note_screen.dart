import 'package:flutter/material.dart';
import 'package:orodomop_app/common/constant.dart';
import 'package:orodomop_app/presentation/pages/note/add_note_page.dart';
import 'package:orodomop_app/presentation/pages/note/edit_note_page.dart';
import 'package:orodomop_app/presentation/widgets/app_bar.dart';

class NoteScreen extends StatelessWidget {
  static const route = '/note_screen';

  const NoteScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context, rootNavigator: true)
              .pushNamed(AddNotePage.route);
        },
        child: Icon(Icons.add),
        backgroundColor: kPrimaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: buildAppBar(
        title: 'Note',
        appBar: AppBar(),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.only(top: 8, right: 24, left: 24, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Jadwal mata pelajaran'),
                  IconButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, EditNotePage.route),
                    icon: Icon(
                      Icons.edit,
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: 8,
        padding: EdgeInsets.all(16),
        separatorBuilder: (context, index) => Divider(height: 16),
      ),
    );
  }
}
