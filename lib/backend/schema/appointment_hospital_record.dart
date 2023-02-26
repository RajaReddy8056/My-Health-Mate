import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'appointment_hospital_record.g.dart';

abstract class AppointmentHospitalRecord
    implements
        Built<AppointmentHospitalRecord, AppointmentHospitalRecordBuilder> {
  static Serializer<AppointmentHospitalRecord> get serializer =>
      _$appointmentHospitalRecordSerializer;

  String? get appointmentName;

  String? get appointmentDescription;

  DocumentReference? get appointmentPerson;

  DateTime? get appointmentTime;

  String? get appointmentType;

  String? get appointmentEmail;

  @BuiltValueField(wireName: 'hospital_ref')
  DocumentReference? get hospitalRef;

  DocumentReference? get patient;

  @BuiltValueField(wireName: 'patient_name')
  String? get patientName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AppointmentHospitalRecordBuilder builder) =>
      builder
        ..appointmentName = ''
        ..appointmentDescription = ''
        ..appointmentType = ''
        ..appointmentEmail = ''
        ..patientName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appointment_hospital');

  static Stream<AppointmentHospitalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AppointmentHospitalRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AppointmentHospitalRecord._();
  factory AppointmentHospitalRecord(
          [void Function(AppointmentHospitalRecordBuilder) updates]) =
      _$AppointmentHospitalRecord;

  static AppointmentHospitalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAppointmentHospitalRecordData({
  String? appointmentName,
  String? appointmentDescription,
  DocumentReference? appointmentPerson,
  DateTime? appointmentTime,
  String? appointmentType,
  String? appointmentEmail,
  DocumentReference? hospitalRef,
  DocumentReference? patient,
  String? patientName,
}) {
  final firestoreData = serializers.toFirestore(
    AppointmentHospitalRecord.serializer,
    AppointmentHospitalRecord(
      (a) => a
        ..appointmentName = appointmentName
        ..appointmentDescription = appointmentDescription
        ..appointmentPerson = appointmentPerson
        ..appointmentTime = appointmentTime
        ..appointmentType = appointmentType
        ..appointmentEmail = appointmentEmail
        ..hospitalRef = hospitalRef
        ..patient = patient
        ..patientName = patientName,
    ),
  );

  return firestoreData;
}
