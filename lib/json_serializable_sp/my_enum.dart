import 'package:json_annotation/json_annotation.dart';
part 'my_enum.g.dart';

enum E {foo, bar}

@JsonSerializable()
class MyEnum {
  E e;
  
  MyEnum(this.e);
  
  factory MyEnum.fromJson(Map<String, dynamic> json) => _$MyEnumFromJson(json);
  Map<String, dynamic> toJson() => _$MyEnumToJson(this); 

  @override
  String toString() {
    return "MyEnum(e=${this.e})";
  }
}
