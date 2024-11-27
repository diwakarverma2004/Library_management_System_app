import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestedBookRecord extends FirestoreRecord {
  RequestedBookRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "std_name" field.
  String? _stdName;
  String get stdName => _stdName ?? '';
  bool hasStdName() => _stdName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _code = castToType<int>(snapshotData['code']);
    _email = snapshotData['email'] as String?;
    _day = castToType<int>(snapshotData['day']);
    _stdName = snapshotData['std_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requested_book');

  static Stream<RequestedBookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestedBookRecord.fromSnapshot(s));

  static Future<RequestedBookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestedBookRecord.fromSnapshot(s));

  static RequestedBookRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestedBookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestedBookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestedBookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestedBookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestedBookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestedBookRecordData({
  String? name,
  int? code,
  String? email,
  int? day,
  String? stdName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'code': code,
      'email': email,
      'day': day,
      'std_name': stdName,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestedBookRecordDocumentEquality
    implements Equality<RequestedBookRecord> {
  const RequestedBookRecordDocumentEquality();

  @override
  bool equals(RequestedBookRecord? e1, RequestedBookRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.code == e2?.code &&
        e1?.email == e2?.email &&
        e1?.day == e2?.day &&
        e1?.stdName == e2?.stdName;
  }

  @override
  int hash(RequestedBookRecord? e) => const ListEquality()
      .hash([e?.name, e?.code, e?.email, e?.day, e?.stdName]);

  @override
  bool isValidKey(Object? o) => o is RequestedBookRecord;
}
