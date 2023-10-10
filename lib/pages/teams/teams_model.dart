import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/add_team_component/add_team_component_widget.dart';
import '/pages/components/edit_team_component/edit_team_component_widget.dart';
import '/pages/components/side/side_widget.dart';
import '/pages/components/view_team_component/view_team_component_widget.dart';
import 'teams_widget.dart' show TeamsWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TeamsModel extends FlutterFlowModel<TeamsWidget> {
  ///  Local state fields for this page.

  List<dynamic> originalListOfTeam = [];
  void addToOriginalListOfTeam(dynamic item) => originalListOfTeam.add(item);
  void removeFromOriginalListOfTeam(dynamic item) =>
      originalListOfTeam.remove(item);
  void removeAtIndexFromOriginalListOfTeam(int index) =>
      originalListOfTeam.removeAt(index);
  void insertAtIndexInOriginalListOfTeam(int index, dynamic item) =>
      originalListOfTeam.insert(index, item);
  void updateOriginalListOfTeamAtIndex(int index, Function(dynamic) updateFn) =>
      originalListOfTeam[index] = updateFn(originalListOfTeam[index]);

  List<dynamic> listOfTeam = [];
  void addToListOfTeam(dynamic item) => listOfTeam.add(item);
  void removeFromListOfTeam(dynamic item) => listOfTeam.remove(item);
  void removeAtIndexFromListOfTeam(int index) => listOfTeam.removeAt(index);
  void insertAtIndexInListOfTeam(int index, dynamic item) =>
      listOfTeam.insert(index, item);
  void updateListOfTeamAtIndex(int index, Function(dynamic) updateFn) =>
      listOfTeam[index] = updateFn(listOfTeam[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetAllTeamsApi)] action in Teams widget.
  ApiCallResponse? apiResultAllTeamCall;
  // Model for Side component.
  late SideModel sideModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideModel = createModel(context, () => SideModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    unfocusNode.dispose();
    sideModel.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
