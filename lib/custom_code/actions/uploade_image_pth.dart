// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:dio/dio.dart';

Future<dynamic> uploadeImagePth(
    FFUploadedFile imagePath, String token, String uploadUrl) async {
  Map<String, dynamic> headersParams = Map<String, dynamic>();
  headersParams['Accept'] = "application/json";
  headersParams['Authorization'] = 'Bearer $token';
  Response response;
  FormData formData = FormData.fromMap({
    "file": await MultipartFile.fromFile(imagePath.name ?? '',
        filename: "file.path"),
  });
  response = await Dio().post(
    uploadUrl,
    data: formData,
    options: Options(
      headers: headersParams,
    ),
  );
  return response;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
