import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentRecord extends FirestoreRecord {
  StudentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userid" field.
  String? _userid;
  String get userid => _userid ?? '';
  bool hasUserid() => _userid != null;

  // "studentid" field.
  String? _studentid;
  String get studentid => _studentid ?? '';
  bool hasStudentid() => _studentid != null;

  void _initializeFields() {
    _userid = snapshotData['userid'] as String?;
    _studentid = snapshotData['studentid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('student');

  static Stream<StudentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentRecord.fromSnapshot(s));

  static Future<StudentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentRecord.fromSnapshot(s));

  static StudentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentRecordData({
  String? userid,
  String? studentid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userid': userid,
      'studentid': studentid,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentRecordDocumentEquality implements Equality<StudentRecord> {
  const StudentRecordDocumentEquality();

  @override
  bool equals(StudentRecord? e1, StudentRecord? e2) {
    return e1?.userid == e2?.userid && e1?.studentid == e2?.studentid;
  }

  @override
  int hash(StudentRecord? e) =>
      const ListEquality().hash([e?.userid, e?.studentid]);

  @override
  bool isValidKey(Object? o) => o is StudentRecord;
}
