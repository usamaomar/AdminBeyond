import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

String newCustomFunction(int accessRole) {
  if (accessRole == 0) {
    return "Developer";
  } else if (accessRole == 1) {
    return "GeneralManager";
  } else if (accessRole == 2) {
    return "Senior";
  } else if (accessRole == 3) {
    return "Middle";
  } else {
    return "Associate";
  }
}

String? newCustomFunction2() {
  return "";
}

int convertAccessRoleToInt(AccessRoleModelStruct accessModel) {
  return accessModel.id;
}

int getSelectedIdAccessRoleByStringValue(String value) {
  if (value == 'General Manager') {
    return 1;
  } else if (value == 'Senior') {
    return 2;
  } else if (value == 'Middle') {
    return 3;
  } else
    return 4;
}

bool filterListByTextSearch(
  String currentTitle,
  String searchText,
) {
  return currentTitle.contains(searchText);
}
