import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  UserModelStruct _userModel = UserModelStruct.fromSerializableMap(jsonDecode(
      '{\"userName\":\"\\\"\\\"\",\"id\":\"\\\"\\\"\",\"firstName\":\"\\\"\\\"\",\"lastName\":\"\\\"\\\"\",\"email\":\"\\\"\\\"\",\"isActive\":\"true\",\"emailConfirmed\":\"true\",\"phoneNumber\":\"\\\"\\\"\",\"profilePictureDataUrl\":\"\\\"\\\"\",\"accessRole\":\"0\",\"token\":\"\\\"\\\"\",\"refreshToken\":\"\\\"\\\"\"}'));
  UserModelStruct get userModel => _userModel;
  set userModel(UserModelStruct _value) {
    _userModel = _value;
  }

  void updateUserModelStruct(Function(UserModelStruct) updateFn) {
    updateFn(_userModel);
  }

  List<AccessRoleModelStruct> _accessRoleModelList = [
    AccessRoleModelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"GeneralManager\",\"id\":\"1\"}')),
    AccessRoleModelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Senior\",\"id\":\"2\"}')),
    AccessRoleModelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Middle\",\"id\":\"3\"}')),
    AccessRoleModelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Administrative\",\"id\":\"5\"}')),
    AccessRoleModelStruct.fromSerializableMap(
        jsonDecode('{\"name\":\"Associate\",\"id\":\"4\"}'))
  ];
  List<AccessRoleModelStruct> get accessRoleModelList => _accessRoleModelList;
  set accessRoleModelList(List<AccessRoleModelStruct> _value) {
    _accessRoleModelList = _value;
  }

  void addToAccessRoleModelList(AccessRoleModelStruct _value) {
    _accessRoleModelList.add(_value);
  }

  void removeFromAccessRoleModelList(AccessRoleModelStruct _value) {
    _accessRoleModelList.remove(_value);
  }

  void removeAtIndexFromAccessRoleModelList(int _index) {
    _accessRoleModelList.removeAt(_index);
  }

  void updateAccessRoleModelListAtIndex(
    int _index,
    AccessRoleModelStruct Function(AccessRoleModelStruct) updateFn,
  ) {
    _accessRoleModelList[_index] = updateFn(_accessRoleModelList[_index]);
  }

  void insertAtIndexInAccessRoleModelList(
      int _index, AccessRoleModelStruct _value) {
    _accessRoleModelList.insert(_index, _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
