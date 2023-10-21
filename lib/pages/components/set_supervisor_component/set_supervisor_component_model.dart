import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'set_supervisor_component_widget.dart' show SetSupervisorComponentWidget;
import 'package:data_table_2/data_table_2.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SetSupervisorComponentModel
    extends FlutterFlowModel<SetSupervisorComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for isSelectedUser widget.

  Map<String, bool> isSelectedUserValueMap = {};
  List<String> get isSelectedUserCheckedItems => isSelectedUserValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for isSelected widget.

  Map<String, bool> isSelectedValueMap = {};
  List<String> get isSelectedCheckedItems => isSelectedValueMap.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
  }

  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
