import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/radio_custom/radio_custom_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_supervisor_component_widget.dart' show AddSupervisorComponentWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddSupervisorComponentModel
    extends FlutterFlowModel<AddSupervisorComponentWidget> {
  ///  Local state fields for this component.

  List<dynamic> listOfLocalJsons = [];
  void addToListOfLocalJsons(dynamic item) => listOfLocalJsons.add(item);
  void removeFromListOfLocalJsons(dynamic item) =>
      listOfLocalJsons.remove(item);
  void removeAtIndexFromListOfLocalJsons(int index) =>
      listOfLocalJsons.removeAt(index);
  void insertAtIndexInListOfLocalJsons(int index, dynamic item) =>
      listOfLocalJsons.insert(index, item);
  void updateListOfLocalJsonsAtIndex(int index, Function(dynamic) updateFn) =>
      listOfLocalJsons[index] = updateFn(listOfLocalJsons[index]);

  List<bool> listOfSelectedVars = [];
  void addToListOfSelectedVars(bool item) => listOfSelectedVars.add(item);
  void removeFromListOfSelectedVars(bool item) =>
      listOfSelectedVars.remove(item);
  void removeAtIndexFromListOfSelectedVars(int index) =>
      listOfSelectedVars.removeAt(index);
  void insertAtIndexInListOfSelectedVars(int index, bool item) =>
      listOfSelectedVars.insert(index, item);
  void updateListOfSelectedVarsAtIndex(int index, Function(bool) updateFn) =>
      listOfSelectedVars[index] = updateFn(listOfSelectedVars[index]);

  String selectedUserId = '';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getAllUseres)] action in AddSupervisorComponent widget.
  ApiCallResponse? getAllUsersJsonList;
  // Stores action output result for [Backend Call - API (SetSupervisorApi)] action in Button widget.
  ApiCallResponse? apiResult08f;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
