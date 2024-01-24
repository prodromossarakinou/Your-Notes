
part of 'package:your_notes_app/local/db/app_db.dart';


@DriftAccessor(tables: [NoteEntity])
class NoteDao extends DatabaseAccessor<AppDb> with _$NoteDaoMixin {
  NoteDao(AppDb attachedDatabase) : super(attachedDatabase);

  Future<int> storeNote(NoteEntityCompanion note) async =>
      await into(noteEntity).insert(note);

  Future<int> updateNote(NoteEntityData newNote) async => await (update(noteEntity)
    ..where((tbl) => tbl.uuid.equals(newNote.uuid)))
      .write(newNote);

  Future<int> deleteNote(NoteEntityData note) async =>
      await (delete(noteEntity)..where((tbl) => tbl.uuid.equals(note.uuid))).go();

  Future<List<NoteEntityData>> getNotes() async => await select(noteEntity).get();

  Future<NoteEntityData?> findNote(String uuid) async =>
      await (select(noteEntity)..where((tbl) => tbl.uuid.equals(uuid))..limit(1))
          .getSingleOrNull();

  Stream<List<NoteEntityData>> watchNotes() => select(noteEntity).watch();


}