import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'radio_custom_model.dart';
export 'radio_custom_model.dart';

class RadioCustomWidget extends StatefulWidget {
  const RadioCustomWidget({Key? key}) : super(key: key);

  @override
  _RadioCustomWidgetState createState() => _RadioCustomWidgetState();
}

class _RadioCustomWidgetState extends State<RadioCustomWidget> {
  late RadioCustomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadioCustomModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        if (_model.isSelected == true)
          Icon(
            Icons.radio_button_checked,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        if (_model.isSelected == false)
          Icon(
            Icons.radio_button_off,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
      ],
    );
  }
}
