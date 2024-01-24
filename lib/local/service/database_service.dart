
import 'package:get/get.dart';
import 'package:your_notes_app/local/db/app_db.dart';

class DatabaseService {

  static DatabaseService get find => Get.find();

  AppDb database = AppDb();
}