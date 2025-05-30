import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

bool isNull(List<String>? widgetState) {
  if (widgetState == null || widgetState.isEmpty) {
    return true;
  } else {
    return false;
  }
}

String? capitalizeInitials(String? elementText) {
  // create a function that capitalize words, e,i: fox tech to Fox Tech and ingeniero de sistemas to Ingeniero de Sistemas
  if (elementText == null || elementText.isEmpty) {
    return elementText;
  }

  List<String> words = elementText.split(' ');
  List<String> capitalizedWords = [];

  for (String word in words) {
    if (word.isNotEmpty) {
      String capitalizedWord =
          word[0].toUpperCase() + word.substring(1).toLowerCase();
      capitalizedWords.add(capitalizedWord);
    }
  }

  return capitalizedWords.join(' ');
}

String? convertActivitiesJsonToMultilineString(String? rawJson) {
  // Si es null o vacío, devolvemos nada.
  if (rawJson == null || rawJson.isEmpty) {
    return '';
  }

  try {
    // Decodificamos el string JSON a una lista dinámica.
    final List<dynamic> listData = jsonDecode(rawJson) as List<dynamic>;

    // Mapeamos cada elemento para concatenar "actividad descripcion".
    final lines = listData.map((item) {
      final actividad = item['actividad'] ?? '';
      final desc = item['descripcion'] ?? '';
      return '$actividad $desc';
    }).toList();

    // Unimos cada línea con saltos de línea.
    return lines.join('\n');
  } catch (e) {
    // Si hay un error parseando o no es JSON válido
    print('Error parseando JSON: $e');
    return 'Error: $e';
  }
}

dynamic convertDataTypeListToJSON(
    List<ActivitiesStruct>? activitiesDataTypeList) {
  if (activitiesDataTypeList == null || activitiesDataTypeList.isEmpty) {
    return null;
  }

  final List<Map<String, dynamic>> mappedList =
      activitiesDataTypeList.map((obj) {
    return {
      'actividad': obj.name, // <-- Corrección de mayúsculas y punto eliminado
      'descripcion': obj.description,
      'id': obj.id.toString() // <-- Campo importante que faltaba
    };
  }).toList();

  return jsonEncode(
      mappedList); // <-- Mejor práctica: retornar String directamente
}

String? dateForScheduledMtto(String? dateFormat) {
  // please create a function that takes the following date format: 2025-02-28 and returns it with this format 28 Feb, 2025
  if (dateFormat == null || dateFormat.isEmpty) {
    return null;
  }

  final DateTime dateTime = DateTime.parse(dateFormat);
  final DateFormat formatter = DateFormat('dd MMM, yyyy');
  final String formattedDate = formatter.format(dateTime);

  return formattedDate;
}

List<dynamic>? processActivitiesJSONList(String? executedActivities) {
  if (executedActivities == null || executedActivities.isEmpty) {
    return [];
  }
  try {
    return jsonDecode(executedActivities) as List<dynamic>;
  } catch (e) {
    // Manejo de error si el JSON no es válido
    print('Error parseando JSON: $e');
    return [];
  }
}

String? capitalizeWords(String? textElement) {
  // create a function that capitalizes words, e,i: fox tech to FOX TECH or Fox tech to FOX TECH, etc
  if (textElement == null || textElement.isEmpty) {
    return textElement;
  }

  List<String> words = textElement.split(' ');
  List<String> capitalizedWords = [];

  for (String word in words) {
    capitalizedWords.add(word.toUpperCase());
  }

  return capitalizedWords.join(' ');
}

String? jsonToReadableString(dynamic jsonData) {
// StringBuffer es más eficiente que ir concatenando strings
  final buffer = StringBuffer();

  jsonData.forEach((key, value) {
    // Si quieres tratar de manera especial los Map anidados u otros tipos, puedes verificar aquí.
    // Por ejemplo, si value es otro Map, podrías convertirlo en JSON u otro formato.
    if (value is Map) {
      // Conviertes el Map interno a String (por ejemplo usando jsonEncode o haciendo un forEach recursivo)
      buffer.writeln('$key: ${value.toString()}');
    } else {
      buffer.writeln('$key: $value');
    }
  });

  return buffer.toString();
}

List<String>? sendStringAsArray(String? string) {
  // create a function that wraps the string in an array and if it's separated by commas separate it like: input> tool1, tool2 ["tool1", "tool2"] or input tool1> ["tool1"]
  if (string == null || string.isEmpty) {
    return null;
  }

  List<String> result = string.split(',').map((e) => e.trim()).toList();
  return result;
}

String greetUser() {
  final currentTime = DateTime.now();
  final hour = currentTime.hour;
  if (hour < 12) {
    return '¡Buenos días, ';
  } else if (hour < 18) {
    return '¡Buenas tardes, ';
  } else {
    return '¡Buenas noches, ';
  }
}

String? convertJsonToReadableString(dynamic jSONData) {
  // please create a function that converts a JSON to a readable string, separate its key value properties into a readable list
  if (jSONData == null) {
    return null;
  }

  Map<String, dynamic> jsonData = jsonDecode(jSONData.join());

  List<String> properties = [];

  jsonData.forEach((key, value) {
    properties.add('$key: $value');
  });

  return properties.join('\n');
}

String? widgetStateLog(List<String>? widgetState) {
  return widgetState.toString();
}

String? formatDateAndTime(DateTime? initialDate) {
  // Please create a function that formats the date and time from the following format: YYYY-MM-dd 00:00:00 000 format to this format: dd/MM/YYYY
  final String inputFormat = 'yyyy-MM-dd HH:mm:ss SSS';
  final String outputFormat = 'dd/MM/yyyy';

  final DateFormat inputFormatter = DateFormat(inputFormat);
  final DateFormat outputFormatter = DateFormat(outputFormat);

  final String inputDate = '2022-01-01 00:00:00 000';
  final DateTime dateTime = inputFormatter.parse(inputDate);

  return outputFormatter.format(dateTime);
}

int? getCurrentYear() {
  return DateTime.now().year.toInt();
}

String? cropFullNameToOneName(String? fullName) {
  // please create a function that returns only the first name (one name) e,i: input: David Alejandro output returns David
  if (fullName == null) {
    return null;
  }

  List<String> names = fullName.split(' ');
  if (names.isNotEmpty) {
    return names.first;
  } else {
    return null;
  }
}

String? generateUuidV4() {
  final _random = math.Random.secure();

  // Generamos 16 bytes aleatorios
  final List<int> bytes = List<int>.generate(16, (_) => _random.nextInt(256));

  // Ajustar para versión 4 => bits 4..7 de byte[6] se ponen en 0100 (0x4)
  bytes[6] = (bytes[6] & 0x0f) | 0x40;

  // Ajustar para variante => bits 6..7 de byte[8] se ponen en 10
  bytes[8] = (bytes[8] & 0x3f) | 0x80;

  // Convertir a hex string
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < 16; i++) {
    buffer.write(bytes[i].toRadixString(16).padLeft(2, '0'));
  }
  final hex = buffer.toString().toLowerCase();

  // Insertar guiones en formato 8-4-4-4-12
  return '${hex.substring(0, 8)}-'
      '${hex.substring(8, 12)}-'
      '${hex.substring(12, 16)}-'
      '${hex.substring(16, 20)}-'
      '${hex.substring(20)}';
}

String? supabaseSignUpWithEmailPassword(
  String? email,
  String? password,
) {
  if (email == null || password == null) {
    return 'Email o password es nulo';
  }

  // Llamada asíncrona dentro de un try-catch, sin "await" (porque es custom function sincrónica).
  Supabase.instance.client.auth
      .signUp(email: email, password: password)
      .then((res) {
    final user = res.user;
    if (user == null) {
      // No se creó el usuario. No tenemos .error o .exception en esta versión:
      print('Error al crear usuario. No se devolvió user.');
      // Podrías hacer algo más aquí, p. ej. notificar en la UI o logs
    } else {
      // Usuario creado con éxito
      print('Usuario creado. ID: ${user.id}');
      // Podrías insertar en public.users si deseas
    }
  }).catchError((err) {
    // Cualquier excepción de la llamada
    print('Sign up error (excepción catcheada): $err');
  });

  return 'Sign up iniciado, revisa la consola de logs para ver el resultado.';
}

String? getCurrentMoth() {
  final months = [
    "ENE",
    "FEB",
    "MAR",
    "ABR",
    "MAY",
    "JUN",
    "JUL",
    "AGO",
    "SEP",
    "OCT",
    "NOV",
    "DIC"
  ];
  final int currentMonthIndex = DateTime.now().month - 1;
  return months[currentMonthIndex];
}

String? formatDateForReporting(String? selectedDate) {
  // create a function that takes a date information that comes through an argument and converts it in this format 2024-01-12
  if (selectedDate != null) {
    DateTime date = DateTime.parse(selectedDate);
    return DateFormat('yyyy-MM-dd').format(date);
  }
  return null;
}

String? countToOneMonthAgo() {
  // please create a function that counts the date to one month ago from the current day and returns the date in the following format: 2024-01-12
  DateTime currentDate = DateTime.now();
  DateTime oneMonthAgo =
      DateTime(currentDate.year, currentDate.month - 1, currentDate.day);
  String formattedDate = DateFormat('yyyy-MM-dd').format(oneMonthAgo);
  return formattedDate;
}

String? currentDate() {
  // please create a function that returns the current date in the following format 2024-01-12
  return DateFormat('yyyy-MM-dd').format(DateTime.now());
}

int? convertToInt(String? numberString) {
  // create a function that receives any number that comes in a string parameter, e.i: "1", and then converts it into an int, e.i: i
  if (numberString == null) {
    return null;
  }

  try {
    return int.parse(numberString);
  } catch (e) {
    return null;
  }
}

String? convertArrayOfStringsIntoJSON(List<String>? listOfActivities) {
  // please create a function that converts an array of objects into a JSON. The objects come with the following fields, Id, Name, Description. The array comes within/throught an argument.
  if (listOfActivities == null || listOfActivities.isEmpty) {
    return null;
  }

  List<Map<String, dynamic>> jsonList = [];

  for (int i = 0; i < listOfActivities.length; i++) {
    String id = i.toString();
    String name = 'Activity $i';
    String description = 'Description for Activity $i';

    Map<String, dynamic> activityMap = {
      'Id': id,
      'Name': name,
      'Description': description,
    };

    jsonList.add(activityMap);
  }

  return jsonEncode(jsonList);
}

String? convertCodeToString(String? baseAssetCode) {
  // create a function that takes a string and converts it to a lowercase string, e.i: MaCp022 to macp022. This function receives a string as an argument.
  return baseAssetCode?.toLowerCase();
}

String? formatNumberToColombianNumber(String? numberToFormat) {
  // please create a function that converts any colombia phone number (e, i: 3506446026) to +57 (350) 644-6026. The functions receives the number as a parameter
  if (numberToFormat == null || numberToFormat.length != 10) {
    return null; // Return null if the input is invalid
  }
  return '+57 (${numberToFormat.substring(0, 3)}) ${numberToFormat.substring(3, 6)}-${numberToFormat.substring(6)}';
}

String? identifyImageFormat(FFUploadedFile? file) {
  if (file == null || file.name == null) return null;

  final extension = file.name!.split('.').last.toLowerCase();
  const validExtensions = ['jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'tiff'];

  return validExtensions.contains(extension) ? extension : null;
}
