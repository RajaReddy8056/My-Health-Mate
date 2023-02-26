import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hospitals_location_record.g.dart';

abstract class HospitalsLocationRecord
    implements Built<HospitalsLocationRecord, HospitalsLocationRecordBuilder> {
  static Serializer<HospitalsLocationRecord> get serializer =>
      _$hospitalsLocationRecordSerializer;

  @BuiltValueField(wireName: 'latitude_lang')
  LatLng? get latitudeLang;

  @BuiltValueField(wireName: 'Hospital_name')
  String? get hospitalName;

  @BuiltValueField(wireName: 'Hospital_number')
  int? get hospitalNumber;

  @BuiltValueField(wireName: 'Hospital_speciality')
  String? get hospitalSpeciality;

  @BuiltValueField(wireName: 'Hospital_address')
  String? get hospitalAddress;

  @BuiltValueField(wireName: 'Availiablity')
  bool? get availiablity;

  @BuiltValueField(wireName: 'Hospital_city')
  String? get hospitalCity;

  @BuiltValueField(wireName: 'Hospital_State')
  String? get hospitalState;

  @BuiltValueField(wireName: 'Hospital_about')
  String? get hospitalAbout;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HospitalsLocationRecordBuilder builder) =>
      builder
        ..hospitalName = ''
        ..hospitalNumber = 0
        ..hospitalSpeciality = ''
        ..hospitalAddress = ''
        ..availiablity = false
        ..hospitalCity = ''
        ..hospitalState = ''
        ..hospitalAbout = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hospitals_location');

  static Stream<HospitalsLocationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HospitalsLocationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HospitalsLocationRecord._();
  factory HospitalsLocationRecord(
          [void Function(HospitalsLocationRecordBuilder) updates]) =
      _$HospitalsLocationRecord;

  static HospitalsLocationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHospitalsLocationRecordData({
  LatLng? latitudeLang,
  String? hospitalName,
  int? hospitalNumber,
  String? hospitalSpeciality,
  String? hospitalAddress,
  bool? availiablity,
  String? hospitalCity,
  String? hospitalState,
  String? hospitalAbout,
}) {
  final firestoreData = serializers.toFirestore(
    HospitalsLocationRecord.serializer,
    HospitalsLocationRecord(
      (h) => h
        ..latitudeLang = latitudeLang
        ..hospitalName = hospitalName
        ..hospitalNumber = hospitalNumber
        ..hospitalSpeciality = hospitalSpeciality
        ..hospitalAddress = hospitalAddress
        ..availiablity = availiablity
        ..hospitalCity = hospitalCity
        ..hospitalState = hospitalState
        ..hospitalAbout = hospitalAbout,
    ),
  );

  return firestoreData;
}
