import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'community_room_record.g.dart';

abstract class CommunityRoomRecord
    implements Built<CommunityRoomRecord, CommunityRoomRecordBuilder> {
  static Serializer<CommunityRoomRecord> get serializer =>
      _$communityRoomRecordSerializer;

  String? get text;

  DateTime? get time;

  @BuiltValueField(wireName: 'sent_by')
  DocumentReference? get sentBy;

  DocumentReference? get community;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommunityRoomRecordBuilder builder) => builder
    ..text = ''
    ..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Community_room');

  static Stream<CommunityRoomRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommunityRoomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommunityRoomRecord._();
  factory CommunityRoomRecord(
          [void Function(CommunityRoomRecordBuilder) updates]) =
      _$CommunityRoomRecord;

  static CommunityRoomRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommunityRoomRecordData({
  String? text,
  DateTime? time,
  DocumentReference? sentBy,
  DocumentReference? community,
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    CommunityRoomRecord.serializer,
    CommunityRoomRecord(
      (c) => c
        ..text = text
        ..time = time
        ..sentBy = sentBy
        ..community = community
        ..name = name,
    ),
  );

  return firestoreData;
}
