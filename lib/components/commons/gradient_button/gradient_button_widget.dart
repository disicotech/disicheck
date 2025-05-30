import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'gradient_button_model.dart';
export 'gradient_button_model.dart';

class GradientButtonWidget extends StatefulWidget {
  const GradientButtonWidget({super.key});

  @override
  State<GradientButtonWidget> createState() => _GradientButtonWidgetState();
}

class _GradientButtonWidgetState extends State<GradientButtonWidget> {
  late GradientButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GradientButtonModel());

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
      width: MediaQuery.sizeOf(context).width * 0.9,
      height: 50.0,
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
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
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Asignar Permisos',
            options: FFButtonOptions(
              width: double.infinity,
              height: 50.0,
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: Color(0x00F58321),
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    letterSpacing: 0.0,
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
