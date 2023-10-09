import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/add_beyonder_component/add_beyonder_component_widget.dart';
import '/pages/components/set_supervisor_component/set_supervisor_component_widget.dart';
import '/pages/components/side/side_widget.dart';
import '/pages/components/update_beyonder_component/update_beyonder_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'update_beyonders_page_widget.dart' show UpdateBeyondersPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateBeyondersPageModel
    extends FlutterFlowModel<UpdateBeyondersPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> listOfAllUseresLocal = [];
  void addToListOfAllUseresLocal(dynamic item) =>
      listOfAllUseresLocal.add(item);
  void removeFromListOfAllUseresLocal(dynamic item) =>
      listOfAllUseresLocal.remove(item);
  void removeAtIndexFromListOfAllUseresLocal(int index) =>
      listOfAllUseresLocal.removeAt(index);
  void insertAtIndexInListOfAllUseresLocal(int index, dynamic item) =>
      listOfAllUseresLocal.insert(index, item);
  void updateListOfAllUseresLocalAtIndex(
          int index, Function(dynamic) updateFn) =>
      listOfAllUseresLocal[index] = updateFn(listOfAllUseresLocal[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getAllUseres)] action in UpdateBeyondersPage widget.
  ApiCallResponse? initPageGetAllUseresApi;
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
