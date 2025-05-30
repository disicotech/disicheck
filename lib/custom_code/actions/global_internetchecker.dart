// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

StreamSubscription<InternetStatus>? _sub;
Future<void> globalInternetchecker() async {
  FFAppState().Internet = await InternetConnection().hasInternetAccess;
  FFAppState().notifyListeners();

  _sub = InternetConnection().onStatusChange.listen((status) {
    final connected = status == InternetStatus.connected;
    if (FFAppState().Internet != connected) {
      FFAppState().Internet = connected;
      FFAppState().notifyListeners();
    }
  });
}

void stopInternetWatcher() => _sub?.cancel();
