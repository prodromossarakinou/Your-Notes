

import 'package:get/get.dart';
import 'package:your_notes_app/local/service/dao_service.dart';
import 'package:your_notes_app/local/service/database_service.dart';
import 'package:your_notes_app/local/service/repository_service.dart';

class GeneralBinding extends Bindings {
  @override
  void dependencies() async {
    await Get.putAsync(() async => DatabaseService());
    await Get.putAsync( () async => DaoService());
    Get.put(RepositoryService());
  }

}