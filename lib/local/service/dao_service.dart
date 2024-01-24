
import 'package:get/get.dart';
import 'package:your_notes_app/local/db/app_db.dart';
import 'package:your_notes_app/local/service/database_service.dart';

class DaoService {

  static DaoService get find => Get.find();

  NoteDao noteDao = NoteDao(DatabaseService.find.database);

}