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

import '/flutter_flow/custom_functions.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

/// Crea un usuario en Supabase Auth usando [email] y [password],
/// y retorna el user.id si todo sale bien, o lanza un error con el mensaje correspondiente.
Future<String> supabaseSignUpWithEmailPasswordAction(
  String email,
  String password,
) async {
  try {
    // Llamamos signUp de forma asíncrona
    final AuthResponse response = await Supabase.instance.client.auth.signUp(
      email: email,
      password: password,
    );

    // Revisa si no se creó el usuario (puede pasar si el correo ya existe, etc.)
    if (response.user == null) {
      // En versiones recientes, puedes examinar 'response.session' o 'response.user'
      // Para un error más detallado, si la librería no provee un 'response.error/exception',
      // prueba con 'response.session?.accessToken' o 'response.session'
      throw Exception('Usuario no creado. Puede que el correo ya exista.');
    }

    // Éxito: devolvemos user.id
    return response.user!.id;
  } catch (err) {
    // Manejo de excepción general
    throw Exception('Error al crear usuario: $err');
  }
}
