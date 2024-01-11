// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $NoteEntityTable extends NoteEntity
    with TableInfo<$NoteEntityTable, NoteEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NoteEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _uuidMeta = const VerificationMeta('uuid');
  @override
  late final GeneratedColumn<String> uuid = GeneratedColumn<String>(
      'uuid', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways('UNIQUE'));
  static const VerificationMeta _categoryMeta =
      const VerificationMeta('category');
  @override
  late final GeneratedColumn<String> category = GeneratedColumn<String>(
      'category', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _noteTextMeta =
      const VerificationMeta('noteText');
  @override
  late final GeneratedColumn<String> noteText = GeneratedColumn<String>(
      'note_text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _issuedDateMeta =
      const VerificationMeta('issuedDate');
  @override
  late final GeneratedColumn<DateTime> issuedDate = GeneratedColumn<DateTime>(
      'issued_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [uuid, category, title, noteText, issuedDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'note_entity';
  @override
  VerificationContext validateIntegrity(Insertable<NoteEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('uuid')) {
      context.handle(
          _uuidMeta, uuid.isAcceptableOrUnknown(data['uuid']!, _uuidMeta));
    } else if (isInserting) {
      context.missing(_uuidMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('note_text')) {
      context.handle(_noteTextMeta,
          noteText.isAcceptableOrUnknown(data['note_text']!, _noteTextMeta));
    } else if (isInserting) {
      context.missing(_noteTextMeta);
    }
    if (data.containsKey('issued_date')) {
      context.handle(
          _issuedDateMeta,
          issuedDate.isAcceptableOrUnknown(
              data['issued_date']!, _issuedDateMeta));
    } else if (isInserting) {
      context.missing(_issuedDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  NoteEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NoteEntityData(
      uuid: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uuid'])!,
      category: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}category']),
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title']),
      noteText: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note_text'])!,
      issuedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}issued_date'])!,
    );
  }

  @override
  $NoteEntityTable createAlias(String alias) {
    return $NoteEntityTable(attachedDatabase, alias);
  }
}

class NoteEntityData extends DataClass implements Insertable<NoteEntityData> {
  final String uuid;
  final String? category;
  final String? title;
  final String noteText;
  final DateTime issuedDate;
  const NoteEntityData(
      {required this.uuid,
      this.category,
      this.title,
      required this.noteText,
      required this.issuedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['uuid'] = Variable<String>(uuid);
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<String>(category);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    map['note_text'] = Variable<String>(noteText);
    map['issued_date'] = Variable<DateTime>(issuedDate);
    return map;
  }

  NoteEntityCompanion toCompanion(bool nullToAbsent) {
    return NoteEntityCompanion(
      uuid: Value(uuid),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      noteText: Value(noteText),
      issuedDate: Value(issuedDate),
    );
  }

  factory NoteEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteEntityData(
      uuid: serializer.fromJson<String>(json['uuid']),
      category: serializer.fromJson<String?>(json['category']),
      title: serializer.fromJson<String?>(json['title']),
      noteText: serializer.fromJson<String>(json['noteText']),
      issuedDate: serializer.fromJson<DateTime>(json['issuedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'uuid': serializer.toJson<String>(uuid),
      'category': serializer.toJson<String?>(category),
      'title': serializer.toJson<String?>(title),
      'noteText': serializer.toJson<String>(noteText),
      'issuedDate': serializer.toJson<DateTime>(issuedDate),
    };
  }

  NoteEntityData copyWith(
          {String? uuid,
          Value<String?> category = const Value.absent(),
          Value<String?> title = const Value.absent(),
          String? noteText,
          DateTime? issuedDate}) =>
      NoteEntityData(
        uuid: uuid ?? this.uuid,
        category: category.present ? category.value : this.category,
        title: title.present ? title.value : this.title,
        noteText: noteText ?? this.noteText,
        issuedDate: issuedDate ?? this.issuedDate,
      );
  @override
  String toString() {
    return (StringBuffer('NoteEntityData(')
          ..write('uuid: $uuid, ')
          ..write('category: $category, ')
          ..write('title: $title, ')
          ..write('noteText: $noteText, ')
          ..write('issuedDate: $issuedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(uuid, category, title, noteText, issuedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteEntityData &&
          other.uuid == this.uuid &&
          other.category == this.category &&
          other.title == this.title &&
          other.noteText == this.noteText &&
          other.issuedDate == this.issuedDate);
}

class NoteEntityCompanion extends UpdateCompanion<NoteEntityData> {
  final Value<String> uuid;
  final Value<String?> category;
  final Value<String?> title;
  final Value<String> noteText;
  final Value<DateTime> issuedDate;
  final Value<int> rowid;
  const NoteEntityCompanion({
    this.uuid = const Value.absent(),
    this.category = const Value.absent(),
    this.title = const Value.absent(),
    this.noteText = const Value.absent(),
    this.issuedDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NoteEntityCompanion.insert({
    required String uuid,
    this.category = const Value.absent(),
    this.title = const Value.absent(),
    required String noteText,
    required DateTime issuedDate,
    this.rowid = const Value.absent(),
  })  : uuid = Value(uuid),
        noteText = Value(noteText),
        issuedDate = Value(issuedDate);
  static Insertable<NoteEntityData> custom({
    Expression<String>? uuid,
    Expression<String>? category,
    Expression<String>? title,
    Expression<String>? noteText,
    Expression<DateTime>? issuedDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (uuid != null) 'uuid': uuid,
      if (category != null) 'category': category,
      if (title != null) 'title': title,
      if (noteText != null) 'note_text': noteText,
      if (issuedDate != null) 'issued_date': issuedDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NoteEntityCompanion copyWith(
      {Value<String>? uuid,
      Value<String?>? category,
      Value<String?>? title,
      Value<String>? noteText,
      Value<DateTime>? issuedDate,
      Value<int>? rowid}) {
    return NoteEntityCompanion(
      uuid: uuid ?? this.uuid,
      category: category ?? this.category,
      title: title ?? this.title,
      noteText: noteText ?? this.noteText,
      issuedDate: issuedDate ?? this.issuedDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (uuid.present) {
      map['uuid'] = Variable<String>(uuid.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (noteText.present) {
      map['note_text'] = Variable<String>(noteText.value);
    }
    if (issuedDate.present) {
      map['issued_date'] = Variable<DateTime>(issuedDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteEntityCompanion(')
          ..write('uuid: $uuid, ')
          ..write('category: $category, ')
          ..write('title: $title, ')
          ..write('noteText: $noteText, ')
          ..write('issuedDate: $issuedDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final $NoteEntityTable noteEntity = $NoteEntityTable(this);
  late final NoteDao noteDao = NoteDao(this as AppDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [noteEntity];
}

mixin _$NoteDaoMixin on DatabaseAccessor<AppDb> {
  $NoteEntityTable get noteEntity => attachedDatabase.noteEntity;
}
