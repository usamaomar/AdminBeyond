import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/add_beyonder_component/add_beyonder_component_widget.dart';
import '/pages/components/add_supervisor_component/add_supervisor_component_widget.dart';
import '/pages/components/side/side_widget.dart';
import '/pages/components/update_beyonder_component/update_beyonder_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'update_beyonders_page_widget.dart' show UpdateBeyondersPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateBeyondersPageModel
    extends FlutterFlowModel<UpdateBeyondersPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> listOfUseres = [];
  void addToListOfUseres(dynamic item) => listOfUseres.add(item);
  void removeFromListOfUseres(dynamic item) => listOfUseres.remove(item);
  void removeAtIndexFromListOfUseres(int index) => listOfUseres.removeAt(index);
  void insertAtIndexInListOfUseres(int index, dynamic item) =>
      listOfUseres.insert(index, item);
  void updateListOfUseresAtIndex(int index, Function(dynamic) updateFn) =>
      listOfUseres[index] = updateFn(listOfUseres[index]);

  List<dynamic> originalListOfUseres = [];
  void addToOriginalListOfUseres(dynamic item) =>
      originalListOfUseres.add(item);
  void removeFromOriginalListOfUseres(dynamic item) =>
      originalListOfUseres.remove(item);
  void removeAtIndexFromOriginalListOfUseres(int index) =>
      originalListOfUseres.removeAt(index);
  void insertAtIndexInOriginalListOfUseres(int index, dynamic item) =>
      originalListOfUseres.insert(index, item);
  void updateOriginalListOfUseresAtIndex(
          int index, Function(dynamic) updateFn) =>
      originalListOfUseres[index] = updateFn(originalListOfUseres[index]);

  List<int> listOfAccessRole = [];
  void addToListOfAccessRole(int item) => listOfAccessRole.add(item);
  void removeFromListOfAccessRole(int item) => listOfAccessRole.remove(item);
  void removeAtIndexFromListOfAccessRole(int index) =>
      listOfAccessRole.removeAt(index);
  void insertAtIndexInListOfAccessRole(int index, int item) =>
      listOfAccessRole.insert(index, item);
  void updateListOfAccessRoleAtIndex(int index, Function(int) updateFn) =>
      listOfAccessRole[index] = updateFn(listOfAccessRole[index]);

  List<String> listOfIdes = [];
  void addToListOfIdes(String item) => listOfIdes.add(item);
  void removeFromListOfIdes(String item) => listOfIdes.remove(item);
  void removeAtIndexFromListOfIdes(int index) => listOfIdes.removeAt(index);
  void insertAtIndexInListOfIdes(int index, String item) =>
      listOfIdes.insert(index, item);
  void updateListOfIdesAtIndex(int index, Function(String) updateFn) =>
      listOfIdes[index] = updateFn(listOfIdes[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAllUseres)] action in UpdateBeyondersPage widget.
  ApiCallResponse? apiResultAllUseresCall;
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
