import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatabaseRecord extends FirestoreRecord {
  DatabaseRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "rollno" field.
  int? _rollno;
  int get rollno => _rollno ?? 0;
  bool hasRollno() => _rollno != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  // "cpass" field.
  int? _cpass;
  int get cpass => _cpass ?? 0;
  bool hasCpass() => _cpass != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "displayname" field.
  String? _displayname;
  String get displayname => _displayname ?? '';
  bool hasDisplayname() => _displayname != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _rollno = castToType<int>(snapshotData['rollno']);
    _password = castToType<int>(snapshotData['password']);
    _cpass = castToType<int>(snapshotData['cpass']);
    _name = snapshotData['name'] as String?;
    _displayname = snapshotData['displayname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('database');

  static Stream<DatabaseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatabaseRecord.fromSnapshot(s));

  static Future<DatabaseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DatabaseRecord.fromSnapshot(s));

  static DatabaseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DatabaseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatabaseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatabaseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatabaseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatabaseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatabaseRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  int? rollno,
  int? password,
  int? cpass,
  String? name,
  String? displayname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'rollno': rollno,
      'password': password,
      'cpass': cpass,
      'name': name,
      'displayname': displayname,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatabaseRecordDocumentEquality implements Equality<DatabaseRecord> {
  const DatabaseRecordDocumentEquality();

  @override
  bool equals(DatabaseRecord? e1, DatabaseRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.rollno == e2?.rollno &&
        e1?.password == e2?.password &&
        e1?.cpass == e2?.cpass &&
        e1?.name == e2?.name &&
        e1?.displayname == e2?.displayname;
  }

  @override
  int hash(DatabaseRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.rollno,
        e?.password,
        e?.cpass,
        e?.name,
        e?.displayname
      ]);

  @override
  bool isValidKey(Object? o) => o is DatabaseRecord;
}
