import 'package:flutter/material.dart';

import '../../../common/constant.dart';

class AddNotePage extends StatelessWidget {
  static const route = '/add_note_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.done),
          )
        ],
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Create Note',
            style: kHeading5.copyWith(color: blackColor),
          ),
        ),
        backgroundColor: whiteColor,
        iconTheme: IconThemeData(color: blackColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Subject'),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Add subject',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: blackColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: blackColor, width: 1),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Text('To-do'),
              const SizedBox(height: 32),
              TextField(
                cursorColor: blackColor,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  hintText: 'Add what you supossed to do',
                  hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: blackColor, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: blackColor, width: 1),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
