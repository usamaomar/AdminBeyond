import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'radio_custom_model.dart';
export 'radio_custom_model.dart';

class RadioCustomWidget extends StatefulWidget {
  const RadioCustomWidget({
    Key? key,
    bool? isSelected,
  })  : this.isSelected = isSelected ?? false,
        super(key: key);

  final bool isSelected;

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

    return Container(
      width: 25.0,
      height: 25.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xFF343434),
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 15.0,
            height: 15.0,
            decoration: BoxDecoration(
              color:
                  widget.isSelected == true ? Color(0xFF120900) : Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
