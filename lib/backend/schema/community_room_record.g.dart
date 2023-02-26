// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_room_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunityRoomRecord> _$communityRoomRecordSerializer =
    new _$CommunityRoomRecordSerializer();

class _$CommunityRoomRecordSerializer
    implements StructuredSerializer<CommunityRoomRecord> {
  @override
  final Iterable<Type> types = const [
    CommunityRoomRecord,
    _$CommunityRoomRecord
  ];
  @override
  final String wireName = 'CommunityRoomRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CommunityRoomRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.sentBy;
    if (value != null) {
      result
        ..add('sent_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.community;
    if (value != null) {
      result
        ..add('community')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
  CommunityRoomRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityRoomRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'sent_by':
          result.sentBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'community':
          result.community = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
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

class _$CommunityRoomRecord extends CommunityRoomRecord {
  @override
  final String? text;
  @override
  final DateTime? time;
  @override
  final DocumentReference<Object?>? sentBy;
  @override
  final DocumentReference<Object?>? community;
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommunityRoomRecord(
          [void Function(CommunityRoomRecordBuilder)? updates]) =>
      (new CommunityRoomRecordBuilder()..update(updates))._build();

  _$CommunityRoomRecord._(
      {this.text,
      this.time,
      this.sentBy,
      this.community,
      this.name,
      this.ffRef})
      : super._();

  @override
  CommunityRoomRecord rebuild(
          void Function(CommunityRoomRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityRoomRecordBuilder toBuilder() =>
      new CommunityRoomRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityRoomRecord &&
        text == other.text &&
        time == other.time &&
        sentBy == other.sentBy &&
        community == other.community &&
        name == other.name &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, text.hashCode), time.hashCode), sentBy.hashCode),
                community.hashCode),
            name.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommunityRoomRecord')
          ..add('text', text)
          ..add('time', time)
          ..add('sentBy', sentBy)
          ..add('community', community)
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommunityRoomRecordBuilder
    implements Builder<CommunityRoomRecord, CommunityRoomRecordBuilder> {
  _$CommunityRoomRecord? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  DocumentReference<Object?>? _sentBy;
  DocumentReference<Object?>? get sentBy => _$this._sentBy;
  set sentBy(DocumentReference<Object?>? sentBy) => _$this._sentBy = sentBy;

  DocumentReference<Object?>? _community;
  DocumentReference<Object?>? get community => _$this._community;
  set community(DocumentReference<Object?>? community) =>
      _$this._community = community;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommunityRoomRecordBuilder() {
    CommunityRoomRecord._initializeBuilder(this);
  }

  CommunityRoomRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _time = $v.time;
      _sentBy = $v.sentBy;
      _community = $v.community;
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityRoomRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunityRoomRecord;
  }

  @override
  void update(void Function(CommunityRoomRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunityRoomRecord build() => _build();

  _$CommunityRoomRecord _build() {
    final _$result = _$v ??
        new _$CommunityRoomRecord._(
            text: text,
            time: time,
            sentBy: sentBy,
            community: community,
            name: name,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
