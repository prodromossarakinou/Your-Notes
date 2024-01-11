
part of 'package:your_notes_app/local/db/app_db.dart';

class NoteEntity extends Table {
  TextColumn get uuid => text().unique()();
  TextColumn get category => text().nullable()();
  TextColumn get title => text().nullable()();
  TextColumn get noteText => text().named('note_text')();
  DateTimeColumn get issuedDate => dateTime()();
}