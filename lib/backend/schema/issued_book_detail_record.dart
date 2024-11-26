import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IssuedBookDetailRecord extends FirestoreRecord {
  IssuedBookDetailRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bookname" field.
  String? _bookname;
  String get bookname => _bookname ?? '';
  bool hasBookname() => _bookname != null;

  // "authorname" field.
  String? _authorname;
  String get authorname => _authorname ?? '';
  bool hasAuthorname() => _authorname != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "tenure" field.
  int? _tenure;
  int get tenure => _tenure ?? 0;
  bool hasTenure() => _tenure != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  void _initializeFields() {
    _bookname = snapshotData['bookname'] as String?;
    _authorname = snapshotData['authorname'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _tenure = castToType<int>(snapshotData['tenure']);
    _email = snapshotData['email'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('IssuedBookDetail');

  static Stream<IssuedBookDetailRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IssuedBookDetailRecord.fromSnapshot(s));

  static Future<IssuedBookDetailRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => IssuedBookDetailRecord.fromSnapshot(s));

  static IssuedBookDetailRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IssuedBookDetailRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IssuedBookDetailRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IssuedBookDetailRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IssuedBookDetailRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IssuedBookDetailRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIssuedBookDetailRecordData({
  String? bookname,
  String? authorname,
  int? code,
  int? tenure,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bookname': bookname,
      'authorname': authorname,
      'code': code,
      'tenure': tenure,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class IssuedBookDetailRecordDocumentEquality
    implements Equality<IssuedBookDetailRecord> {
  const IssuedBookDetailRecordDocumentEquality();

  @override
  bool equals(IssuedBookDetailRecord? e1, IssuedBookDetailRecord? e2) {
    return e1?.bookname == e2?.bookname &&
        e1?.authorname == e2?.authorname &&
        e1?.code == e2?.code &&
        e1?.tenure == e2?.tenure &&
        e1?.email == e2?.email;
  }

  @override
  int hash(IssuedBookDetailRecord? e) => const ListEquality()
      .hash([e?.bookname, e?.authorname, e?.code, e?.tenure, e?.email]);

  @override
  bool isValidKey(Object? o) => o is IssuedBookDetailRecord;
}
