// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospitals_location_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HospitalsLocationRecord> _$hospitalsLocationRecordSerializer =
    new _$HospitalsLocationRecordSerializer();

class _$HospitalsLocationRecordSerializer
    implements StructuredSerializer<HospitalsLocationRecord> {
  @override
  final Iterable<Type> types = const [
    HospitalsLocationRecord,
    _$HospitalsLocationRecord
  ];
  @override
  final String wireName = 'HospitalsLocationRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HospitalsLocationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.latitudeLang;
    if (value != null) {
      result
        ..add('latitude_lang')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.hospitalName;
    if (value != null) {
      result
        ..add('Hospital_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hospitalNumber;
    if (value != null) {
      result
        ..add('Hospital_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hospitalSpeciality;
    if (value != null) {
      result
        ..add('Hospital_speciality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hospitalAddress;
    if (value != null) {
      result
        ..add('Hospital_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.availiablity;
    if (value != null) {
      result
        ..add('Availiablity')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hospitalCity;
    if (value != null) {
      result
        ..add('Hospital_city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hospitalState;
    if (value != null) {
      result
        ..add('Hospital_State')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hospitalAbout;
    if (value != null) {
      result
        ..add('Hospital_about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  HospitalsLocationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HospitalsLocationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'latitude_lang':
          result.latitudeLang = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Hospital_name':
          result.hospitalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hospital_number':
          result.hospitalNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Hospital_speciality':
          result.hospitalSpeciality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hospital_address':
          result.hospitalAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Availiablity':
          result.availiablity = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Hospital_city':
          result.hospitalCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hospital_State':
          result.hospitalState = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hospital_about':
          result.hospitalAbout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$HospitalsLocationRecord extends HospitalsLocationRecord {
  @override
  final LatLng? latitudeLang;
  @override
  final String? hospitalName;
  @override
  final int? hospitalNumber;
  @override
  final String? hospitalSpeciality;
  @override
  final String? hospitalAddress;
  @override
  final bool? availiablity;
  @override
  final String? hospitalCity;
  @override
  final String? hospitalState;
  @override
  final String? hospitalAbout;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HospitalsLocationRecord(
          [void Function(HospitalsLocationRecordBuilder)? updates]) =>
      (new HospitalsLocationRecordBuilder()..update(updates))._build();

  _$HospitalsLocationRecord._(
      {this.latitudeLang,
      this.hospitalName,
      this.hospitalNumber,
      this.hospitalSpeciality,
      this.hospitalAddress,
      this.availiablity,
      this.hospitalCity,
      this.hospitalState,
      this.hospitalAbout,
      this.ffRef})
      : super._();

  @override
  HospitalsLocationRecord rebuild(
          void Function(HospitalsLocationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HospitalsLocationRecordBuilder toBuilder() =>
      new HospitalsLocationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HospitalsLocationRecord &&
        latitudeLang == other.latitudeLang &&
        hospitalName == other.hospitalName &&
        hospitalNumber == other.hospitalNumber &&
        hospitalSpeciality == other.hospitalSpeciality &&
        hospitalAddress == other.hospitalAddress &&
        availiablity == other.availiablity &&
        hospitalCity == other.hospitalCity &&
        hospitalState == other.hospitalState &&
        hospitalAbout == other.hospitalAbout &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, latitudeLang.hashCode),
                                        hospitalName.hashCode),
                                    hospitalNumber.hashCode),
                                hospitalSpeciality.hashCode),
                            hospitalAddress.hashCode),
                        availiablity.hashCode),
                    hospitalCity.hashCode),
                hospitalState.hashCode),
            hospitalAbout.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HospitalsLocationRecord')
          ..add('latitudeLang', latitudeLang)
          ..add('hospitalName', hospitalName)
          ..add('hospitalNumber', hospitalNumber)
          ..add('hospitalSpeciality', hospitalSpeciality)
          ..add('hospitalAddress', hospitalAddress)
          ..add('availiablity', availiablity)
          ..add('hospitalCity', hospitalCity)
          ..add('hospitalState', hospitalState)
          ..add('hospitalAbout', hospitalAbout)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HospitalsLocationRecordBuilder
    implements
        Builder<HospitalsLocationRecord, HospitalsLocationRecordBuilder> {
  _$HospitalsLocationRecord? _$v;

  LatLng? _latitudeLang;
  LatLng? get latitudeLang => _$this._latitudeLang;
  set latitudeLang(LatLng? latitudeLang) => _$this._latitudeLang = latitudeLang;

  String? _hospitalName;
  String? get hospitalName => _$this._hospitalName;
  set hospitalName(String? hospitalName) => _$this._hospitalName = hospitalName;

  int? _hospitalNumber;
  int? get hospitalNumber => _$this._hospitalNumber;
  set hospitalNumber(int? hospitalNumber) =>
      _$this._hospitalNumber = hospitalNumber;

  String? _hospitalSpeciality;
  String? get hospitalSpeciality => _$this._hospitalSpeciality;
  set hospitalSpeciality(String? hospitalSpeciality) =>
      _$this._hospitalSpeciality = hospitalSpeciality;

  String? _hospitalAddress;
  String? get hospitalAddress => _$this._hospitalAddress;
  set hospitalAddress(String? hospitalAddress) =>
      _$this._hospitalAddress = hospitalAddress;

  bool? _availiablity;
  bool? get availiablity => _$this._availiablity;
  set availiablity(bool? availiablity) => _$this._availiablity = availiablity;

  String? _hospitalCity;
  String? get hospitalCity => _$this._hospitalCity;
  set hospitalCity(String? hospitalCity) => _$this._hospitalCity = hospitalCity;

  String? _hospitalState;
  String? get hospitalState => _$this._hospitalState;
  set hospitalState(String? hospitalState) =>
      _$this._hospitalState = hospitalState;

  String? _hospitalAbout;
  String? get hospitalAbout => _$this._hospitalAbout;
  set hospitalAbout(String? hospitalAbout) =>
      _$this._hospitalAbout = hospitalAbout;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HospitalsLocationRecordBuilder() {
    HospitalsLocationRecord._initializeBuilder(this);
  }

  HospitalsLocationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitudeLang = $v.latitudeLang;
      _hospitalName = $v.hospitalName;
      _hospitalNumber = $v.hospitalNumber;
      _hospitalSpeciality = $v.hospitalSpeciality;
      _hospitalAddress = $v.hospitalAddress;
      _availiablity = $v.availiablity;
      _hospitalCity = $v.hospitalCity;
      _hospitalState = $v.hospitalState;
      _hospitalAbout = $v.hospitalAbout;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HospitalsLocationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HospitalsLocationRecord;
  }

  @override
  void update(void Function(HospitalsLocationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HospitalsLocationRecord build() => _build();

  _$HospitalsLocationRecord _build() {
    final _$result = _$v ??
        new _$HospitalsLocationRecord._(
            latitudeLang: latitudeLang,
            hospitalName: hospitalName,
            hospitalNumber: hospitalNumber,
            hospitalSpeciality: hospitalSpeciality,
            hospitalAddress: hospitalAddress,
            availiablity: availiablity,
            hospitalCity: hospitalCity,
            hospitalState: hospitalState,
            hospitalAbout: hospitalAbout,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
