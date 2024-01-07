import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/Auth/Login?email=${email}&&password=${password}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class RegisterUserApiCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? password = '',
    String? confirmPassword = '',
    String? phoneNumber = '',
    bool? activateUser,
    int? accessRole = 4,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "confirmPassword": "${confirmPassword}",
  "phoneNumber": "${phoneNumber}",
  "activateUser": ${activateUser},
  "accessRole": ${accessRole}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUserApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/User/Register?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class UpdateTeamNameApiCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    int? id,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
"id": ${id} ,
"name": "${name}"  
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateTeamNameApi',
      apiUrl: 'https://api.beyond.matterhr.com/api/v1/Teams/Put?token=${token}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class UpdateUserProfileApiCall {
  static Future<ApiCallResponse> call({
    String? firstName = '',
    String? lastName = '',
    String? token = '',
    String? phoneNumber = '',
    String? profilePictureUrl = '',
    String? userId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "phoneNumber": "${phoneNumber}",
  "profilePictureUrl": "${profilePictureUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateUserProfileApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/Account/UpdateUserProfile?token=${token}&&userId=${userId}',
      callType: ApiCallType.PUT,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class AddTeamNameCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
"name": "${name}"  
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addTeamName',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/Teams/Post?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class AddClientApiCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? token = '',
    String? email = '',
    String? phoneNumber = '',
    String? address = '',
    String? contactName = '',
    String? alternativePhoneNumber = '',
    String? logoImageUrl = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${name}",
  "email": "${email}",
  "phoneNumber": "${phoneNumber}",
  "address": "${address}",
  "contactName": "${contactName}",
  "alternativePhoneNumber": "${alternativePhoneNumber}",
  "logoImageUrl": "${logoImageUrl}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddClientApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/Clients/Post?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class SetSupervisorApiCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
    String? token = '',
    String? supervisorId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userId": "${userId}",
  "supervisorId": "${supervisorId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetSupervisorApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/User/SetSupervisor?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class SetSeniorTeamApiCall {
  static Future<ApiCallResponse> call({
    String? seniorId = '',
    String? token = '',
    int? teamId,
  }) async {
    final ffApiRequestBody = '''
{
  "seniorId": "${seniorId}",
  "teamId": ${teamId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetSeniorTeamApi',
      apiUrl:
          'https://api.beyond.matterhr.com/api/v1/Teams/SetSeniorTeam?token=${token}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic refreshToken(dynamic response) => getJsonField(
        response,
        r'''$.data.refreshToken''',
      );
  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.data.token''',
      );
  static dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
  static dynamic messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
      );
  static dynamic errorMessage(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

class GetMyUserCall {
  static Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetMyUser',
      apiUrl: 'https://api.beyond.matterhr.com/api/v1/User/GetMy',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  static String? userName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.userName''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.firstName''',
      ));
  static String? lastName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.lastName''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.email''',
      ));
  static bool? isActive(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.data.isActive''',
      ));
  static bool? emailConfirmed(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.data.emailConfirmed''',
      ));
  static String? phonenNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.phoneNumber''',
      ));
  static int? accessRole(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.accessRole''',
      ));
  static dynamic? profilePictureDataUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.profilePictureDataUrl''',
      );
}

class GetAllUseresCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    List<String>? idsList,
  }) async {
    final ids = _serializeList(idsList);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllUseres',
      apiUrl: 'https://api.beyond.matterhr.com/api/v1/User/GetAll',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?;
  static List? userNams(dynamic response) => getJsonField(
        response,
        r'''$.data[:].userName''',
        true,
      ) as List?;
  static List? firstNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].firstName''',
        true,
      ) as List?;
  static List? lastNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lastName''',
        true,
      ) as List?;
  static List? emails(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      ) as List?;
  static List? isActives(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isActive''',
        true,
      ) as List?;
  static List<bool>? emailConfirmeds(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].emailConfirmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? phoneNumbers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phoneNumber''',
        true,
      ) as List?;
  static List? profilePictureDataUrls(dynamic response) => getJsonField(
        response,
        r'''$.data[:].profilePictureDataUrl''',
        true,
      ) as List?;
  static List? accessRoles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].accessRole''',
        true,
      ) as List?;
  static List? dataListObject(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
}

class GetAllClientsApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? searchText = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllClientsApi',
      apiUrl: 'https://api.beyond.matterhr.com/api/v1/Clients/GetAllClients',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {
        'token': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?;
  static List? userNams(dynamic response) => getJsonField(
        response,
        r'''$.data[:].userName''',
        true,
      ) as List?;
  static List? firstNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].firstName''',
        true,
      ) as List?;
  static List? lastNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lastName''',
        true,
      ) as List?;
  static List? emails(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      ) as List?;
  static List? isActives(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isActive''',
        true,
      ) as List?;
  static List<bool>? emailConfirmeds(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].emailConfirmed''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<bool>(x))
          .withoutNulls
          .toList();
  static List? phoneNumbers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phoneNumber''',
        true,
      ) as List?;
  static List? profilePictureDataUrls(dynamic response) => getJsonField(
        response,
        r'''$.data[:].profilePictureDataUrl''',
        true,
      ) as List?;
  static List? accessRoles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].accessRole''',
        true,
      ) as List?;
  static List? dataListObject(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
}

class GetAllTeamsApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? pageSize = 10000,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllTeamsApi',
      apiUrl: 'https://api.beyond.matterhr.com/api/v1/Teams/GetAllTeams',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer  ${token}',
      },
      params: {
        'token': token,
        'PageSize': 10000,
        'PageNumber': 1,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?;
  static List? id(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?;
  static List? name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      ) as List?;
  static List? membersCount(dynamic response) => getJsonField(
        response,
        r'''$.data[:].membersCount''',
        true,
      ) as List?;
  static dynamic isActives(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isActive''',
      );
  static bool? emailConfirmeds(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.data[:].emailConfirmed''',
      ));
  static dynamic phoneNumbers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phoneNumber''',
      );
  static dynamic profilePictureDataUrls(dynamic response) => getJsonField(
        response,
        r'''$.data[:].profilePictureDataUrl''',
      );
  static dynamic accessRoles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].accessRole''',
      );
  static dynamic dataListObject(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
