import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/components/radio_custom/radio_custom_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assign_seniors_component_model.dart';
export 'assign_seniors_component_model.dart';

class AssignSeniorsComponentWidget extends StatefulWidget {
  const AssignSeniorsComponentWidget({
    Key? key,
    required this.teamId,
  }) : super(key: key);

  final int? teamId;

  @override
  _AssignSeniorsComponentWidgetState createState() =>
      _AssignSeniorsComponentWidgetState();
}

class _AssignSeniorsComponentWidgetState
    extends State<AssignSeniorsComponentWidget> {
  late AssignSeniorsComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignSeniorsComponentModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getAllUsersJsonList = await GetAllUseresCall.call(
        token: FFAppState().userModel.token,
      );
      if ((_model.getAllUsersJsonList?.succeeded ?? true)) {
        setState(() {
          _model.listOfLocalJsons = getJsonField(
            (_model.getAllUsersJsonList?.jsonBody ?? ''),
            r'''$.data[?(@.accessRole == 2)]''',
            true,
          )!
              .toList()
              .cast<dynamic>();
          _model.listOfSelectedVars = functions
              .addBoolsList(_model.listOfLocalJsons.length)
              .toList()
              .cast<bool>();
        });
      }
    });

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
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 800.0,
            height: 700.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                4.0, 0.0, 8.0, 0.0),
                            child: Icon(
                              Icons.group_add,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 36.0,
                            ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'en8h3pqe' /* Assign To Team */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: FaIcon(
                                    FontAwesomeIcons.solidWindowClose,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Builder(
                        builder: (context) {
                          final listOfLocalItems =
                              _model.listOfLocalJsons.toList();
                          return DataTable2(
                            columns: [
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'mmuc9wx3' /* UserName */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '8u1zlige' /* Email */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                              DataColumn2(
                                label: DefaultTextStyle.merge(
                                  softWrap: true,
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'b6aku17k' /* Assign To Team */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).labelLarge,
                                  ),
                                ),
                              ),
                            ],
                            rows: (listOfLocalItems as Iterable)
                                .mapIndexed((listOfLocalItemsIndex,
                                        listOfLocalItemsItem) =>
                                    [
                                      Text(
                                        getJsonField(
                                          listOfLocalItemsItem,
                                          r'''$.firstName''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Text(
                                        getJsonField(
                                          listOfLocalItemsItem,
                                          r'''$.email''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                _model.listOfSelectedVars = [];
                                              });
                                              setState(() {
                                                _model.listOfSelectedVars =
                                                    functions
                                                        .addBoolsList(_model
                                                            .listOfLocalJsons
                                                            .length)
                                                        .toList()
                                                        .cast<bool>();
                                              });
                                              if (_model.listOfSelectedVars[
                                                  listOfLocalItemsIndex]) {
                                                setState(() {
                                                  _model
                                                      .updateListOfSelectedVarsAtIndex(
                                                    listOfLocalItemsIndex,
                                                    (_) => false,
                                                  );
                                                });
                                              } else {
                                                setState(() {
                                                  _model
                                                      .updateListOfSelectedVarsAtIndex(
                                                    listOfLocalItemsIndex,
                                                    (_) => true,
                                                  );
                                                });
                                              }

                                              setState(() {
                                                _model.selectedUserId =
                                                    getJsonField(
                                                  listOfLocalItemsItem,
                                                  r'''$.id''',
                                                ).toString();
                                              });
                                            },
                                            child: RadioCustomWidget(
                                              key: Key(
                                                  'Key4rb_${listOfLocalItemsIndex}_of_${listOfLocalItems.length}'),
                                              isSelected:
                                                  _model.listOfSelectedVars[
                                                      listOfLocalItemsIndex],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ].map((c) => DataCell(c)).toList())
                                .map((e) => DataRow(cells: e))
                                .toList(),
                            headingRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            headingRowHeight: 56.0,
                            dataRowColor: MaterialStateProperty.all(
                              FlutterFlowTheme.of(context).secondaryBackground,
                            ),
                            dataRowHeight: 56.0,
                            border: TableBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            dividerThickness: 1.0,
                            showBottomBorder: true,
                            minWidth: 49.0,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: _model.selectedUserId == null ||
                                    _model.selectedUserId == ''
                                ? null
                                : () async {
                                    _model.apiResult08f =
                                        await SetSeniorTeamApiCall.call(
                                      seniorId: _model.selectedUserId,
                                      teamId: widget.teamId,
                                      token: FFAppState().userModel.token,
                                    );
                                    if ((_model.apiResult08f?.succeeded ??
                                        true)) {
                                      context.safePop();
                                    }

                                    setState(() {});
                                  },
                            text: FFLocalizations.of(context).getText(
                              'uw9bx7o0' /* Save */,
                            ),
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                              disabledColor: Color(0xFFD9D4D4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
