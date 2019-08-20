// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_enum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyEnum _$MyEnumFromJson(Map<String, dynamic> json) {
  return MyEnum(_$enumDecodeNullable(_$EEnumMap, json['e']));
}

Map<String, dynamic> _$MyEnumToJson(MyEnum instance) =>
    <String, dynamic>{'e': _$EEnumMap[instance.e]};

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$EEnumMap = <E, dynamic>{E.foo: 'foo', E.bar: 'bar'};
