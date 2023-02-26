import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'symptons_record.g.dart';

abstract class SymptonsRecord
    implements Built<SymptonsRecord, SymptonsRecordBuilder> {
  static Serializer<SymptonsRecord> get serializer =>
      _$symptonsRecordSerializer;

  @BuiltValueField(wireName: 'Sympton')
  String? get sympton;

  @BuiltValueField(wireName: 'Sympton_desc')
  String? get symptonDesc;

  @BuiltValueField(wireName: 'Remedies')
  String? get remedies;

  @BuiltValueField(wireName: 'Sympton_avoidable_foods')
  String? get symptonAvoidableFoods;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SymptonsRecordBuilder builder) => builder
    ..sympton = ''
    ..symptonDesc = ''
    ..remedies = ''
    ..symptonAvoidableFoods = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('symptons');

  static Stream<SymptonsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SymptonsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SymptonsRecord._();
  factory SymptonsRecord([void Function(SymptonsRecordBuilder) updates]) =
      _$SymptonsRecord;

  static SymptonsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSymptonsRecordData({
  String? sympton,
  String? symptonDesc,
  String? remedies,
  String? symptonAvoidableFoods,
}) {
  final firestoreData = serializers.toFirestore(
    SymptonsRecord.serializer,
    SymptonsRecord(
      (s) => s
        ..sympton = sympton
        ..symptonDesc = symptonDesc
        ..remedies = remedies
        ..symptonAvoidableFoods = symptonAvoidableFoods,
    ),
  );

  return firestoreData;
}
