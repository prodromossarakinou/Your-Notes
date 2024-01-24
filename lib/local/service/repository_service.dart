

import 'package:your_notes_app/local/service/dao_service.dart';
import 'package:your_notes_app/repository/note/note_implementation.dart';
import 'package:your_notes_app/repository/note/note_repository.dart';

class RepositoryService {
  INoteRepository noteRepository = NoteRepository(noteDao: DaoService.find.noteDao);
}