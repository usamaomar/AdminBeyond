import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginApiCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginApi',
      apiUrl:
          'https://beyond.api.matterhr.com/api/v1/Auth/Login?email=${email}&&password=${password}',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
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
  }) {
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
          'https://beyond.api.matterhr.com/api/v1/User/Register?token=${token}',
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
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetMyUser',
      apiUrl: 'https://beyond.api.matterhr.com/api/v1/User/GetMy',
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
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data.id''',
      );
  static dynamic userName(dynamic response) => getJsonField(
        response,
        r'''$.data.userName''',
      );
  static dynamic firstName(dynamic response) => getJsonField(
        response,
        r'''$.data.firstName''',
      );
  static dynamic lastName(dynamic response) => getJsonField(
        response,
        r'''$.data.lastName''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.data.email''',
      );
  static dynamic isActive(dynamic response) => getJsonField(
        response,
        r'''$.data.isActive''',
      );
  static dynamic emailConfirmed(dynamic response) => getJsonField(
        response,
        r'''$.data.emailConfirmed''',
      );
  static dynamic phonenNumber(dynamic response) => getJsonField(
        response,
        r'''$.data.phoneNumber''',
      );
  static dynamic accessRole(dynamic response) => getJsonField(
        response,
        r'''$.data.accessRole''',
      );
  static dynamic profilePictureDataUrl(dynamic response) => getJsonField(
        response,
        r'''$.data.profilePictureDataUrl''',
      );
}

class GetAllUseresCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    List<String>? idsList,
  }) {
    final ids = _serializeList(idsList);

    return ApiManager.instance.makeApiCall(
      callName: 'getAllUseres',
      apiUrl: 'https://beyond.api.matterhr.com/api/v1/User/GetAll',
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
    );
  }

  static dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic userNams(dynamic response) => getJsonField(
        response,
        r'''$.data[:].userName''',
        true,
      );
  static dynamic firstNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].firstName''',
        true,
      );
  static dynamic lastNames(dynamic response) => getJsonField(
        response,
        r'''$.data[:].lastName''',
        true,
      );
  static dynamic emails(dynamic response) => getJsonField(
        response,
        r'''$.data[:].email''',
        true,
      );
  static dynamic isActives(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isActive''',
        true,
      );
  static dynamic emailConfirmeds(dynamic response) => getJsonField(
        response,
        r'''$.data[:].emailConfirmed''',
        true,
      );
  static dynamic phoneNumbers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].phoneNumber''',
        true,
      );
  static dynamic profilePictureDataUrls(dynamic response) => getJsonField(
        response,
        r'''$.data[:].profilePictureDataUrl''',
        true,
      );
  static dynamic accessRoles(dynamic response) => getJsonField(
        response,
        r'''$.data[:].accessRole''',
        true,
      );
  static dynamic dataListObject(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      );
  static dynamic succeeded(dynamic response) => getJsonField(
        response,
        r'''$.succeeded''',
      );
}

class GetAllTeamsApiCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? pageSize = 10000,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetAllTeamsApi',
      apiUrl: 'https://beyond.api.matterhr.com/api/v1/User/GetAllTeams',
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
    );
  }

  static dynamic ids(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.data[:].name''',
        true,
      );
  static dynamic membersCount(dynamic response) => getJsonField(
        response,
        r'''$.data[:].membersCount''',
        true,
      );
  static dynamic isActives(dynamic response) => getJsonField(
        response,
        r'''$.data[:].isActive''',
      );
  static dynamic emailConfirmeds(dynamic response) => getJsonField(
        response,
        r'''$.data[:].emailConfirmed''',
      );
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
