import '/components/commons/principal_action_button_orange/principal_action_button_orange_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'empty_access_requests_model.dart';
export 'empty_access_requests_model.dart';

class EmptyAccessRequestsWidget extends StatefulWidget {
  const EmptyAccessRequestsWidget({super.key});

  @override
  State<EmptyAccessRequestsWidget> createState() =>
      _EmptyAccessRequestsWidgetState();
}

class _EmptyAccessRequestsWidgetState extends State<EmptyAccessRequestsWidget> {
  late EmptyAccessRequestsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyAccessRequestsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 200.0, 0.0, 0.0),
      child: Container(
        width: 300.0,
        height: 300.0,
        decoration: BoxDecoration(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                color: Color(0xFFEEF2FF),
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: Icon(
                Icons.inbox_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 44.0,
              ),
            ),
            Text(
              'Sin notificaciones de acceso',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    font: GoogleFonts.nunito(
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
                    color: Colors.black,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
            ),
            wrapWithModel(
              model: _model.principalActionButtonOrangeModel,
              updateCallback: () => safeSetState(() {}),
              child: PrincipalActionButtonOrangeWidget(
                buttonText: 'Ir al inicio',
                requiredAction: () async {
                  context.pushNamed(
                    HomePageWidget.routeName,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
              ),
            ),
          ].divide(SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
