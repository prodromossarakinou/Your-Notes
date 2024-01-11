
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:your_notes_app/static/app_const.dart';

part 'app_db.g.dart';
part 'tables/note_entity.dart';
part 'daos/note_dao.dart';

/*
GO TO FILE
SAVE ALL
OPEN TERMINAL AND HIT:
*/
/*flutter clean && flutter pub get && flutter packages pub run build_runner build --delete-conflicting-outputs */

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, AppConst.dbName));

    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [NoteEntity], daos: [NoteDao])
class AppDb extends _$AppDb {

  AppDb() : super(_openConnection());

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
        onUpgrade: (Migrator m,int from, int to) async {

        }
    );
  }

  @override
  int get schemaVersion => 0;

}