// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccessRoleModelStruct extends BaseStruct {
  AccessRoleModelStruct({
    String? name,
    int? id,
  })  : _name = name,
        _id = id;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;
  void incrementId(int amount) => _id = id + amount;
  bool hasId() => _id != null;

  static AccessRoleModelStruct fromMap(Map<String, dynamic> data) =>
      AccessRoleModelStruct(
        name: data['name'] as String?,
        id: castToType<int>(data['id']),
      );

  static AccessRoleModelStruct? maybeFromMap(dynamic data) => data is Map
      ? AccessRoleModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static AccessRoleModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccessRoleModelStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AccessRoleModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccessRoleModelStruct &&
        name == other.name &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([name, id]);
}

AccessRoleModelStruct createAccessRoleModelStruct({
  String? name,
  int? id,
}) =>
    AccessRoleModelStruct(
      name: name,
      id: id,
    );
