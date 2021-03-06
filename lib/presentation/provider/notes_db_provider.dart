import 'package:flutter/cupertino.dart';
import 'package:orodomop_app/data/database.dart';
import 'package:orodomop_app/data/models/notes.dart';

class NotesDatabaseProvider extends ChangeNotifier {
  late DatabaseHelper _databaseHelper;

  String addSuccessMessage = 'Added a new note';
  String deleteSuccessMessage = 'Deleted a note';
  String updateSuccessMessage = 'Updated a note';

  String _noteMsg = '';
  String get noteMsg => _noteMsg;

  List<NotesTable> _notes = [];
  List<NotesTable> get notes => _notes;

  NotesDatabaseProvider() {
    _databaseHelper = DatabaseHelper();
    _getNotes();
  }

  void _getNotes() async {
    _notes = await _databaseHelper.getNotesList();
    notifyListeners();
  }

  Future<void> insertNote(NotesTable notes) async {
    _noteMsg = addSuccessMessage;
    await _databaseHelper.insertNote(notes);
    _getNotes();
  }

  Future<void> updateNotes(NotesTable NotesTable) async {
    _noteMsg = updateSuccessMessage;
    await _databaseHelper.updateNote(NotesTable);
    _getNotes();
  }

  Future<void> deleteNote(int id) async {
    _noteMsg = deleteSuccessMessage;
    await _databaseHelper.deleteNote(id);
    _getNotes();
  }

  Future<NotesTable> getNoteById(int id) async {
    return await _databaseHelper.getNoteById(id);
  }
}
