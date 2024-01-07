// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserModelStruct extends BaseStruct {
  UserModelStruct({
    String? userName,
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    bool? isActive,
    bool? emailConfirmed,
    String? phoneNumber,
    String? profilePictureDataUrl,
    int? accessRole,
    String? token,
    String? refreshToken,
  })  : _userName = userName,
        _id = id,
        _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _isActive = isActive,
        _emailConfirmed = emailConfirmed,
        _phoneNumber = phoneNumber,
        _profilePictureDataUrl = profilePictureDataUrl,
        _accessRole = accessRole,
        _token = token,
        _refreshToken = refreshToken;

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;
  bool hasUserName() => _userName != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;
  bool hasIsActive() => _isActive != null;

  // "emailConfirmed" field.
  bool? _emailConfirmed;
  bool get emailConfirmed => _emailConfirmed ?? false;
  set emailConfirmed(bool? val) => _emailConfirmed = val;
  bool hasEmailConfirmed() => _emailConfirmed != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "profilePictureDataUrl" field.
  String? _profilePictureDataUrl;
  String get profilePictureDataUrl => _profilePictureDataUrl ?? '';
  set profilePictureDataUrl(String? val) => _profilePictureDataUrl = val;
  bool hasProfilePictureDataUrl() => _profilePictureDataUrl != null;

  // "accessRole" field.
  int? _accessRole;
  int get accessRole => _accessRole ?? 0;
  set accessRole(int? val) => _accessRole = val;
  void incrementAccessRole(int amount) => _accessRole = accessRole + amount;
  bool hasAccessRole() => _accessRole != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  // "refreshToken" field.
  String? _refreshToken;
  String get refreshToken => _refreshToken ?? '';
  set refreshToken(String? val) => _refreshToken = val;
  bool hasRefreshToken() => _refreshToken != null;

  static UserModelStruct fromMap(Map<String, dynamic> data) => UserModelStruct(
        userName: data['userName'] as String?,
        id: data['id'] as String?,
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        email: data['email'] as String?,
        isActive: data['isActive'] as bool?,
        emailConfirmed: data['emailConfirmed'] as bool?,
        phoneNumber: data['phoneNumber'] as String?,
        profilePictureDataUrl: data['profilePictureDataUrl'] as String?,
        accessRole: castToType<int>(data['accessRole']),
        token: data['token'] as String?,
        refreshToken: data['refreshToken'] as String?,
      );

  static UserModelStruct? maybeFromMap(dynamic data) => data is Map
      ? UserModelStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'id': _id,
        'firstName': _firstName,
        'lastName': _lastName,
        'email': _email,
        'isActive': _isActive,
        'emailConfirmed': _emailConfirmed,
        'phoneNumber': _phoneNumber,
        'profilePictureDataUrl': _profilePictureDataUrl,
        'accessRole': _accessRole,
        'token': _token,
        'refreshToken': _refreshToken,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'emailConfirmed': serializeParam(
          _emailConfirmed,
          ParamType.bool,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'profilePictureDataUrl': serializeParam(
          _profilePictureDataUrl,
          ParamType.String,
        ),
        'accessRole': serializeParam(
          _accessRole,
          ParamType.int,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
        'refreshToken': serializeParam(
          _refreshToken,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserModelStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserModelStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        emailConfirmed: deserializeParam(
          data['emailConfirmed'],
          ParamType.bool,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        profilePictureDataUrl: deserializeParam(
          data['profilePictureDataUrl'],
          ParamType.String,
          false,
        ),
        accessRole: deserializeParam(
          data['accessRole'],
          ParamType.int,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
        refreshToken: deserializeParam(
          data['refreshToken'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserModelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserModelStruct &&
        userName == other.userName &&
        id == other.id &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        email == other.email &&
        isActive == other.isActive &&
        emailConfirmed == other.emailConfirmed &&
        phoneNumber == other.phoneNumber &&
        profilePictureDataUrl == other.profilePictureDataUrl &&
        accessRole == other.accessRole &&
        token == other.token &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userName,
        id,
        firstName,
        lastName,
        email,
        isActive,
        emailConfirmed,
        phoneNumber,
        profilePictureDataUrl,
        accessRole,
        token,
        refreshToken
      ]);
}

UserModelStruct createUserModelStruct({
  String? userName,
  String? id,
  String? firstName,
  String? lastName,
  String? email,
  bool? isActive,
  bool? emailConfirmed,
  String? phoneNumber,
  String? profilePictureDataUrl,
  int? accessRole,
  String? token,
  String? refreshToken,
}) =>
    UserModelStruct(
      userName: userName,
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      isActive: isActive,
      emailConfirmed: emailConfirmed,
      phoneNumber: phoneNumber,
      profilePictureDataUrl: profilePictureDataUrl,
      accessRole: accessRole,
      token: token,
      refreshToken: refreshToken,
    );
