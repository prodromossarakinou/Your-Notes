
part of 'package:your_notes_app/local/db/app_db.dart';


@DriftAccessor(tables: [NoteEntity])
class NoteDao extends DatabaseAccessor<AppDb> with _$NoteDaoMixin {
  NoteDao(AppDb attachedDatabase) : super(attachedDatabase);
}