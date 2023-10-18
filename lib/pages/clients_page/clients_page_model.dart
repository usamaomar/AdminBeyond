import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/add_client_component/add_client_component_widget.dart';
import '/pages/components/side/side_widget.dart';
import 'clients_page_widget.dart' show ClientsPageWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClientsPageModel extends FlutterFlowModel<ClientsPageWidget> {
  ///  Local state fields for this page.

  List<dynamic> listOfClicntsFromApi = [];
  void addToListOfClicntsFromApi(dynamic item) =>
      listOfClicntsFromApi.add(item);
  void removeFromListOfClicntsFromApi(dynamic item) =>
      listOfClicntsFromApi.remove(item);
  void removeAtIndexFromListOfClicntsFromApi(int index) =>
      listOfClicntsFromApi.removeAt(index);
  void insertAtIndexInListOfClicntsFromApi(int index, dynamic item) =>
      listOfClicntsFromApi.insert(index, item);
  void updateListOfClicntsFromApiAtIndex(
          int index, Function(dynamic) updateFn) =>
      listOfClicntsFromApi[index] = updateFn(listOfClicntsFromApi[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GetAllClientsApi)] action in ClientsPage widget.
  ApiCallResponse? apiResultvkc;
  // Model for Side component.
  late SideModel sideModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (GetAllClientsApi)] action in TextField widget.
  ApiCallResponse? apiResultvkcCopy;

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
