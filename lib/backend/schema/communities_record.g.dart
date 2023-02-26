// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunitiesRecord> _$communitiesRecordSerializer =
    new _$CommunitiesRecordSerializer();

class _$CommunitiesRecordSerializer
    implements StructuredSerializer<CommunitiesRecord> {
  @override
  final Iterable<Type> types = const [CommunitiesRecord, _$CommunitiesRecord];
  @override
  final String wireName = 'CommunitiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommunitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.communityName;
    if (value != null) {
      result
        ..add('community_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.communityDesc;
    if (value != null) {
      result
        ..add('community_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.membersJoined;
    if (value != null) {
      result
        ..add('Members_joined')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.members;
    if (value != null) {
      result
        ..add('Members')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  CommunitiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'community_name':
          result.communityName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'community_desc':
          result.communityDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Members_joined':
          result.membersJoined = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Members':
          result.members = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$CommunitiesRecord extends CommunitiesRecord {
  @override
  final String? communityName;
  @override
  final String? communityDesc;
  @override
  final int? membersJoined;
  @override
  final DocumentReference<Object?>? members;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommunitiesRecord(
          [void Function(CommunitiesRecordBuilder)? updates]) =>
      (new CommunitiesRecordBuilder()..update(updates))._build();

  _$CommunitiesRecord._(
      {this.communityName,
      this.communityDesc,
      this.membersJoined,
      this.members,
      this.ffRef})
      : super._();

  @override
  CommunitiesRecord rebuild(void Function(CommunitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunitiesRecordBuilder toBuilder() =>
      new CommunitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunitiesRecord &&
        communityName == other.communityName &&
        communityDesc == other.communityDesc &&
        membersJoined == other.membersJoined &&
        members == other.members &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, communityName.hashCode), communityDesc.hashCode),
                membersJoined.hashCode),
            members.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommunitiesRecord')
          ..add('communityName', communityName)
          ..add('communityDesc', communityDesc)
          ..add('membersJoined', membersJoined)
          ..add('members', members)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommunitiesRecordBuilder
    implements Builder<CommunitiesRecord, CommunitiesRecordBuilder> {
  _$CommunitiesRecord? _$v;

  String? _communityName;
  String? get communityName => _$this._communityName;
  set communityName(String? communityName) =>
      _$this._communityName = communityName;

  String? _communityDesc;
  String? get communityDesc => _$this._communityDesc;
  set communityDesc(String? communityDesc) =>
      _$this._communityDesc = communityDesc;

  int? _membersJoined;
  int? get membersJoined => _$this._membersJoined;
  set membersJoined(int? membersJoined) =>
      _$this._membersJoined = membersJoined;

  DocumentReference<Object?>? _members;
  DocumentReference<Object?>? get members => _$this._members;
  set members(DocumentReference<Object?>? members) => _$this._members = members;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommunitiesRecordBuilder() {
    CommunitiesRecord._initializeBuilder(this);
  }

  CommunitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _communityName = $v.communityName;
      _communityDesc = $v.communityDesc;
      _membersJoined = $v.membersJoined;
      _members = $v.members;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommunitiesRecord;
  }

  @override
  void update(void Function(CommunitiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommunitiesRecord build() => _build();

  _$CommunitiesRecord _build() {
    final _$result = _$v ??
        new _$CommunitiesRecord._(
            communityName: communityName,
            communityDesc: communityDesc,
            membersJoined: membersJoined,
            members: members,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
