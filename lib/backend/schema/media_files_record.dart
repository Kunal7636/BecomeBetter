import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MediaFilesRecord extends FirestoreRecord {
  MediaFilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  bool hasDatetime() => _datetime != null;

  // "frontfoot" field.
  String? _frontfoot;
  String get frontfoot => _frontfoot ?? '';
  bool hasFrontfoot() => _frontfoot != null;

  // "backfoot" field.
  String? _backfoot;
  String get backfoot => _backfoot ?? '';
  bool hasBackfoot() => _backfoot != null;

  // "cutshot" field.
  String? _cutshot;
  String get cutshot => _cutshot ?? '';
  bool hasCutshot() => _cutshot != null;

  // "instructorid" field.
  String? _instructorid;
  String get instructorid => _instructorid ?? '';
  bool hasInstructorid() => _instructorid != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _datetime = snapshotData['datetime'] as DateTime?;
    _frontfoot = snapshotData['frontfoot'] as String?;
    _backfoot = snapshotData['backfoot'] as String?;
    _cutshot = snapshotData['cutshot'] as String?;
    _instructorid = snapshotData['instructorid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mediaFiles');

  static Stream<MediaFilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MediaFilesRecord.fromSnapshot(s));

  static Future<MediaFilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MediaFilesRecord.fromSnapshot(s));

  static MediaFilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MediaFilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MediaFilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MediaFilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MediaFilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MediaFilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMediaFilesRecordData({
  String? uid,
  DateTime? datetime,
  String? frontfoot,
  String? backfoot,
  String? cutshot,
  String? instructorid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'datetime': datetime,
      'frontfoot': frontfoot,
      'backfoot': backfoot,
      'cutshot': cutshot,
      'instructorid': instructorid,
    }.withoutNulls,
  );

  return firestoreData;
}

class MediaFilesRecordDocumentEquality implements Equality<MediaFilesRecord> {
  const MediaFilesRecordDocumentEquality();

  @override
  bool equals(MediaFilesRecord? e1, MediaFilesRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.datetime == e2?.datetime &&
        e1?.frontfoot == e2?.frontfoot &&
        e1?.backfoot == e2?.backfoot &&
        e1?.cutshot == e2?.cutshot &&
        e1?.instructorid == e2?.instructorid;
  }

  @override
  int hash(MediaFilesRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.datetime,
        e?.frontfoot,
        e?.backfoot,
        e?.cutshot,
        e?.instructorid
      ]);

  @override
  bool isValidKey(Object? o) => o is MediaFilesRecord;
}
