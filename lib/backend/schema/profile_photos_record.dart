import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfilePhotosRecord extends FirestoreRecord {
  ProfilePhotosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "profilepic" field.
  String? _profilepic;
  String get profilepic => _profilepic ?? '';
  bool hasProfilepic() => _profilepic != null;

  void _initializeFields() {
    _profilepic = snapshotData['profilepic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('profilePhotos');

  static Stream<ProfilePhotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilePhotosRecord.fromSnapshot(s));

  static Future<ProfilePhotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilePhotosRecord.fromSnapshot(s));

  static ProfilePhotosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilePhotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilePhotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilePhotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilePhotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilePhotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilePhotosRecordData({
  String? profilepic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'profilepic': profilepic,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilePhotosRecordDocumentEquality
    implements Equality<ProfilePhotosRecord> {
  const ProfilePhotosRecordDocumentEquality();

  @override
  bool equals(ProfilePhotosRecord? e1, ProfilePhotosRecord? e2) {
    return e1?.profilepic == e2?.profilepic;
  }

  @override
  int hash(ProfilePhotosRecord? e) =>
      const ListEquality().hash([e?.profilepic]);

  @override
  bool isValidKey(Object? o) => o is ProfilePhotosRecord;
}
