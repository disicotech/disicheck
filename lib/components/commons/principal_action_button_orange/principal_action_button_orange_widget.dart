import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
<<<<<<< HEAD
=======
import 'package:provider/provider.dart';
>>>>>>> master
import 'principal_action_button_orange_model.dart';
export 'principal_action_button_orange_model.dart';

class PrincipalActionButtonOrangeWidget extends StatefulWidget {
  const PrincipalActionButtonOrangeWidget({
    super.key,
    required this.buttonText,
    required this.requiredAction,
  });

  final String? buttonText;
  final Future Function()? requiredAction;

  @override
  State<PrincipalActionButtonOrangeWidget> createState() =>
      _PrincipalActionButtonOrangeWidgetState();
}

class _PrincipalActionButtonOrangeWidgetState
    extends State<PrincipalActionButtonOrangeWidget> {
  late PrincipalActionButtonOrangeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrincipalActionButtonOrangeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 50.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Container(
            width: double.infinity,
            height: 150.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primary,
                  Color(0xFFFEA151)
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(-1.0, -0.64),
                end: AlignmentDirectional(1.0, 0.64),
              ),
              borderRadius: BorderRadius.circular(24.0),
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
          ),
          FFButtonWidget(
            onPressed: () async {
              await widget.requiredAction?.call();
            },
<<<<<<< HEAD
            text: widget.buttonText!,
=======
            text: widget!.buttonText!,
>>>>>>> master
            options: FFButtonOptions(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0x00F58321),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    font: GoogleFonts.roboto(
                      fontWeight:
                          FlutterFlowTheme.of(context).titleSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                    ),
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
              elevation: 0.0,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}
