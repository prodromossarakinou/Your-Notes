
import 'package:your_notes_app/local/db/app_db.dart';

abstract class INoteRepository {
  Future<int> storeNote(NoteEntityCompanion noteEntityCompanion);

  Future<int> storeNoteEntityData(NoteEntityData noteEntityData);

  Stream<List<NoteEntityData>> watchPersonnelEntity();

  Future<int> updateNote(NoteEntityData newNote);

  Future<int> deleteNote(NoteEntityData noteEntityData);

  Future<List<NoteEntityData>> getNotes();

  Future<NoteEntityData?> findNote(String uuid);
}