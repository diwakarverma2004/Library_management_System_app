import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CollectionBookRecord extends FirestoreRecord {
  CollectionBookRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Genre" field.
  String? _genre;
  String get genre => _genre ?? '';
  bool hasGenre() => _genre != null;

  // "AuthorName" field.
  String? _authorName;
  String get authorName => _authorName ?? '';
  bool hasAuthorName() => _authorName != null;

  // "Code" field.
  int? _code;
  int get code => _code ?? 0;
  bool hasCode() => _code != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _genre = snapshotData['Genre'] as String?;
    _authorName = snapshotData['AuthorName'] as String?;
    _code = castToType<int>(snapshotData['Code']);
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('collectionBook');

  static Stream<CollectionBookRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CollectionBookRecord.fromSnapshot(s));

  static Future<CollectionBookRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CollectionBookRecord.fromSnapshot(s));

  static CollectionBookRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CollectionBookRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CollectionBookRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CollectionBookRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CollectionBookRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CollectionBookRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCollectionBookRecordData({
  String? name,
  String? genre,
  String? authorName,
  int? code,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Genre': genre,
      'AuthorName': authorName,
      'Code': code,
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class CollectionBookRecordDocumentEquality
    implements Equality<CollectionBookRecord> {
  const CollectionBookRecordDocumentEquality();

  @override
  bool equals(CollectionBookRecord? e1, CollectionBookRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.genre == e2?.genre &&
        e1?.authorName == e2?.authorName &&
        e1?.code == e2?.code &&
        e1?.image == e2?.image;
  }

  @override
  int hash(CollectionBookRecord? e) => const ListEquality()
      .hash([e?.name, e?.genre, e?.authorName, e?.code, e?.image]);

  @override
  bool isValidKey(Object? o) => o is CollectionBookRecord;
}
