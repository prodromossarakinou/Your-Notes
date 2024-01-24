
import 'package:your_notes_app/local/db/app_db.dart';
import 'package:your_notes_app/repository/note/note_implementation.dart';

class NoteRepository implements INoteRepository {


  final NoteDao noteDao;

  NoteRepository({required this.noteDao});


  @override
  Future<int> deleteNote(NoteEntityData noteEntityData) async {
    return await noteDao.deleteNote(noteEntityData);
  }

  @override
  Future<NoteEntityData?> findNote(String uuid) async {
    return await noteDao.findNote(uuid);
  }

  @override
  Future<int> storeNote(NoteEntityCompanion noteEntityCompanion) async {
    return await storeNote(noteEntityCompanion);
  }

  @override
  Future<int> storeNoteEntityData(NoteEntityData noteEntityData) async {
    return await storeNote(noteEntityData.toCompanion(true));
  }

  @override
  Future<List<NoteEntityData>> getNotes() async {
    return await noteDao.getNotes();
  }

  @override
  Future<int> updateNote(NoteEntityData newNote) async {
    return await noteDao.updateNote(newNote);
  }

  @override
  Stream<List<NoteEntityData>> watchPersonnelEntity() {
   return noteDao.watchNotes();
  }

}