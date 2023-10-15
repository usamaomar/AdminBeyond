import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textController2 ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController1?.text = FFLocalizations.of(context).getText(
            '9ul1t6pt' /* usamaomarsoftware@gmail.com */,
          );
          _model.textController2?.text = FFLocalizations.of(context).getText(
            '84n3swmn' /* password */,
          );
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                var _shouldSetState = false;
                                _model.callsCopy = await LoginApiCall.call(
                                  email: 'usamaomarsoftware@gmail.com',
                                  password: 'password',
                                );
                                _shouldSetState = true;
                                if ((_model.calls?.succeeded ?? true) != true) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        LoginApiCall.errorMessage(
                                          (_model.calls?.jsonBody ?? ''),
                                        ).toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0xFFF5F0F0),
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                                _model.succeeded = LoginApiCall.succeeded(
                                  (_model.calls?.jsonBody ?? ''),
                                );
                                if (!_model.succeeded) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        LoginApiCall.messages(
                                          (_model.calls?.jsonBody ?? ''),
                                        ).toString(),
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0xFFF5F0F0),
                                    ),
                                  );
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                                _model.getMyUserCallCopy =
                                    await GetMyUserCall.call(
                                  token: LoginApiCall.token(
                                    (_model.calls?.jsonBody ?? ''),
                                  ).toString(),
                                );
                                _shouldSetState = true;
                                setState(() {
                                  FFAppState().updateUserModelStruct(
                                    (e) => e
                                      ..id = GetMyUserCall.id(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..userName = GetMyUserCall.userName(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..firstName = GetMyUserCall.firstName(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..lastName = GetMyUserCall.lastName(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..email = GetMyUserCall.email(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..isActive = GetMyUserCall.isActive(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      )
                                      ..emailConfirmed =
                                          GetMyUserCall.emailConfirmed(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      )
                                      ..phoneNumber =
                                          GetMyUserCall.phonenNumber(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      ).toString()
                                      ..accessRole = GetMyUserCall.accessRole(
                                        (_model.getMyUserCall?.jsonBody ?? ''),
                                      )
                                      ..token = LoginApiCall.token(
                                        (_model.calls?.jsonBody ?? ''),
                                      ).toString()
                                      ..refreshToken =
                                          LoginApiCall.refreshToken(
                                        (_model.calls?.jsonBody ?? ''),
                                      ).toString(),
                                  );
                                });
                                if (!(FFAppState().userModel.id != null &&
                                    FFAppState().userModel.id != '')) {
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }

                                context.pushNamed(
                                  'UpdateBeyondersPage',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                    ),
                                  },
                                );

                                if (_shouldSetState) setState(() {});
                              },
                              child: GradientText(
                                FFLocalizations.of(context).getText(
                                  'jxduewal' /* BC */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Playfair Display',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 140.0,
                                    ),
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).secondary
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                            GradientText(
                              FFLocalizations.of(context).getText(
                                'o4f1d35l' /* Admin */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Playfair Display',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 80.0,
                                  ),
                              colors: [
                                FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).secondary
                              ],
                              gradientDirection: GradientDirection.ltr,
                              gradientType: GradientType.linear,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: TextFormField(
                              controller: _model.textController1,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'vryrc7ik' /* usamaomarsoftware@gmail.com */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: FFLocalizations.of(context).getText(
                                  'hozih48i' /* Email */,
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.textController1Validator
                                  .asValidator(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          20.0, 10.0, 20.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController2,
                              obscureText: !_model.passwordVisibility,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  'i0a1w3pk' /* password */,
                                ),
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintText: FFLocalizations.of(context).getText(
                                  'bqk9giez' /* Password */,
                                ),
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.passwordVisibility =
                                        !_model.passwordVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF343434),
                                    size: 25.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontWeight: FontWeight.w500,
                                  ),
                              keyboardType: TextInputType.visiblePassword,
                              validator: _model.textController2Validator
                                  .asValidator(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              _model.calls = await LoginApiCall.call(
                                email: _model.textController1.text,
                                password: _model.textController2.text,
                              );
                              _shouldSetState = true;
                              if ((_model.calls?.succeeded ?? true) != true) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      LoginApiCall.errorMessage(
                                        (_model.calls?.jsonBody ?? ''),
                                      ).toString(),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFF5F0F0),
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                              _model.succeeded = LoginApiCall.succeeded(
                                (_model.calls?.jsonBody ?? ''),
                              );
                              if (!_model.succeeded) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      LoginApiCall.messages(
                                        (_model.calls?.jsonBody ?? ''),
                                      ).toString(),
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0xFFF5F0F0),
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                              _model.getMyUserCall = await GetMyUserCall.call(
                                token: LoginApiCall.token(
                                  (_model.calls?.jsonBody ?? ''),
                                ).toString(),
                              );
                              _shouldSetState = true;
                              setState(() {
                                FFAppState().updateUserModelStruct(
                                  (e) => e
                                    ..id = GetMyUserCall.id(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..userName = GetMyUserCall.userName(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..firstName = GetMyUserCall.firstName(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..lastName = GetMyUserCall.lastName(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..email = GetMyUserCall.email(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..isActive = GetMyUserCall.isActive(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    )
                                    ..emailConfirmed =
                                        GetMyUserCall.emailConfirmed(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    )
                                    ..phoneNumber = GetMyUserCall.phonenNumber(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    ).toString()
                                    ..accessRole = GetMyUserCall.accessRole(
                                      (_model.getMyUserCall?.jsonBody ?? ''),
                                    )
                                    ..token = LoginApiCall.token(
                                      (_model.calls?.jsonBody ?? ''),
                                    ).toString()
                                    ..refreshToken = LoginApiCall.refreshToken(
                                      (_model.calls?.jsonBody ?? ''),
                                    ).toString(),
                                );
                              });
                              if (!(FFAppState().userModel.id != null &&
                                  FFAppState().userModel.id != '')) {
                                if (_shouldSetState) setState(() {});
                                return;
                              }

                              context.pushNamed(
                                'UpdateBeyondersPage',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );

                              if (_shouldSetState) setState(() {});
                            },
                            text: FFLocalizations.of(context).getText(
                              'i7fxagal' /* Login */,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
