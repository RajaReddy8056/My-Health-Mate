// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptons_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SymptonsRecord> _$symptonsRecordSerializer =
    new _$SymptonsRecordSerializer();

class _$SymptonsRecordSerializer
    implements StructuredSerializer<SymptonsRecord> {
  @override
  final Iterable<Type> types = const [SymptonsRecord, _$SymptonsRecord];
  @override
  final String wireName = 'SymptonsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SymptonsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sympton;
    if (value != null) {
      result
        ..add('Sympton')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.symptonDesc;
    if (value != null) {
      result
        ..add('Sympton_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.remedies;
    if (value != null) {
      result
        ..add('Remedies')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.symptonAvoidableFoods;
    if (value != null) {
      result
        ..add('Sympton_avoidable_foods')
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
  SymptonsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SymptonsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Sympton':
          result.sympton = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sympton_desc':
          result.symptonDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Remedies':
          result.remedies = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Sympton_avoidable_foods':
          result.symptonAvoidableFoods = serializers.deserialize(value,
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

class _$SymptonsRecord extends SymptonsRecord {
  @override
  final String? sympton;
  @override
  final String? symptonDesc;
  @override
  final String? remedies;
  @override
  final String? symptonAvoidableFoods;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SymptonsRecord([void Function(SymptonsRecordBuilder)? updates]) =>
      (new SymptonsRecordBuilder()..update(updates))._build();

  _$SymptonsRecord._(
      {this.sympton,
      this.symptonDesc,
      this.remedies,
      this.symptonAvoidableFoods,
      this.ffRef})
      : super._();

  @override
  SymptonsRecord rebuild(void Function(SymptonsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SymptonsRecordBuilder toBuilder() =>
      new SymptonsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SymptonsRecord &&
        sympton == other.sympton &&
        symptonDesc == other.symptonDesc &&
        remedies == other.remedies &&
        symptonAvoidableFoods == other.symptonAvoidableFoods &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, sympton.hashCode), symptonDesc.hashCode),
                remedies.hashCode),
            symptonAvoidableFoods.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SymptonsRecord')
          ..add('sympton', sympton)
          ..add('symptonDesc', symptonDesc)
          ..add('remedies', remedies)
          ..add('symptonAvoidableFoods', symptonAvoidableFoods)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SymptonsRecordBuilder
    implements Builder<SymptonsRecord, SymptonsRecordBuilder> {
  _$SymptonsRecord? _$v;

  String? _sympton;
  String? get sympton => _$this._sympton;
  set sympton(String? sympton) => _$this._sympton = sympton;

  String? _symptonDesc;
  String? get symptonDesc => _$this._symptonDesc;
  set symptonDesc(String? symptonDesc) => _$this._symptonDesc = symptonDesc;

  String? _remedies;
  String? get remedies => _$this._remedies;
  set remedies(String? remedies) => _$this._remedies = remedies;

  String? _symptonAvoidableFoods;
  String? get symptonAvoidableFoods => _$this._symptonAvoidableFoods;
  set symptonAvoidableFoods(String? symptonAvoidableFoods) =>
      _$this._symptonAvoidableFoods = symptonAvoidableFoods;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SymptonsRecordBuilder() {
    SymptonsRecord._initializeBuilder(this);
  }

  SymptonsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sympton = $v.sympton;
      _symptonDesc = $v.symptonDesc;
      _remedies = $v.remedies;
      _symptonAvoidableFoods = $v.symptonAvoidableFoods;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SymptonsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SymptonsRecord;
  }

  @override
  void update(void Function(SymptonsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SymptonsRecord build() => _build();

  _$SymptonsRecord _build() {
    final _$result = _$v ??
        new _$SymptonsRecord._(
            sympton: sympton,
            symptonDesc: symptonDesc,
            remedies: remedies,
            symptonAvoidableFoods: symptonAvoidableFoods,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
