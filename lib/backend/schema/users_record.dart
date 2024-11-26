import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "branch" field.
  String? _branch;
  String get branch => _branch ?? '';
  bool hasBranch() => _branch != null;

  // "batch" field.
  DateTime? _batch;
  DateTime? get batch => _batch;
  bool hasBatch() => _batch != null;

  // "password" field.
  int? _password;
  int get password => _password ?? 0;
  bool hasPassword() => _password != null;

  // "confirmpass" field.
  int? _confirmpass;
  int get confirmpass => _confirmpass ?? 0;
  bool hasConfirmpass() => _confirmpass != null;

  // "profilePicture" field.
  String? _profilePicture;
  String get profilePicture => _profilePicture ?? '';
  bool hasProfilePicture() => _profilePicture != null;

  // "rollnumber" field.
  int? _rollnumber;
  int get rollnumber => _rollnumber ?? 0;
  bool hasRollnumber() => _rollnumber != null;

  // "uploads" field.
  String? _uploads;
  String get uploads => _uploads ?? '';
  bool hasUploads() => _uploads != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "shortDescription" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "last_active_time" field.
  DateTime? _lastActiveTime;
  DateTime? get lastActiveTime => _lastActiveTime;
  bool hasLastActiveTime() => _lastActiveTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "requestedBook" field.
  List<DocumentReference>? _requestedBook;
  List<DocumentReference> get requestedBook => _requestedBook ?? const [];
  bool hasRequestedBook() => _requestedBook != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _name = snapshotData['name'] as String?;
    _branch = snapshotData['branch'] as String?;
    _batch = snapshotData['batch'] as DateTime?;
    _password = castToType<int>(snapshotData['password']);
    _confirmpass = castToType<int>(snapshotData['confirmpass']);
    _profilePicture = snapshotData['profilePicture'] as String?;
    _rollnumber = castToType<int>(snapshotData['rollnumber']);
    _uploads = snapshotData['uploads'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _shortDescription = snapshotData['shortDescription'] as String?;
    _lastActiveTime = snapshotData['last_active_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _title = snapshotData['title'] as String?;
    _requestedBook = getDataList(snapshotData['requestedBook']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? name,
  String? branch,
  DateTime? batch,
  int? password,
  int? confirmpass,
  String? profilePicture,
  int? rollnumber,
  String? uploads,
  String? displayName,
  String? shortDescription,
  DateTime? lastActiveTime,
  String? role,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'name': name,
      'branch': branch,
      'batch': batch,
      'password': password,
      'confirmpass': confirmpass,
      'profilePicture': profilePicture,
      'rollnumber': rollnumber,
      'uploads': uploads,
      'display_name': displayName,
      'shortDescription': shortDescription,
      'last_active_time': lastActiveTime,
      'role': role,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.name == e2?.name &&
        e1?.branch == e2?.branch &&
        e1?.batch == e2?.batch &&
        e1?.password == e2?.password &&
        e1?.confirmpass == e2?.confirmpass &&
        e1?.profilePicture == e2?.profilePicture &&
        e1?.rollnumber == e2?.rollnumber &&
        e1?.uploads == e2?.uploads &&
        e1?.displayName == e2?.displayName &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.lastActiveTime == e2?.lastActiveTime &&
        e1?.role == e2?.role &&
        e1?.title == e2?.title &&
        listEquality.equals(e1?.requestedBook, e2?.requestedBook);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.name,
        e?.branch,
        e?.batch,
        e?.password,
        e?.confirmpass,
        e?.profilePicture,
        e?.rollnumber,
        e?.uploads,
        e?.displayName,
        e?.shortDescription,
        e?.lastActiveTime,
        e?.role,
        e?.title,
        e?.requestedBook
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
