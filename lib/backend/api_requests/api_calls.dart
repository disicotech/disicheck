import 'dart:convert';
<<<<<<< HEAD
=======
import 'dart:typed_data';
import '../schema/structs/index.dart';
>>>>>>> master

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_commons/api_requests/api_manager.dart';

<<<<<<< HEAD
=======
import 'package:ff_commons/api_requests/api_paging_params.dart';
>>>>>>> master

export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetMaintenancesWithProjectCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET MAINTENANCES WITH PROJECT',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenances_with_project?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? mttos(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GenerateReportToPdfCall {
  static Future<ApiCallResponse> call({
    int? scheduledMttos,
    int? failuresFound,
    int? failuresFixed,
    String? reportVersion = '',
    String? observations = '',
  }) async {
    final ffApiRequestBody = '''
{
  "template_id": "7c177b23384f3050",
  "export_type": "json",
  "expiration": 10,
  "output_file": "my_new.pdf",
  "data": {
    "invoice_number": "INV38379",
    "date": "2021-09-30",
    "due_date": "2021-09-30",
    "currency": "USD",
    "discount": 5,
    "tax": 7,
    "report_version": "${escapeStringForJson(reportVersion)}",
    "observations": "${escapeStringForJson(observations)}",
    "company_name": "LOGO Consulting Pte Ltd",
    "email": "hseq@disico.com.co",
    "client": "Orsis Pte Ltd",
    "client_address": "${scheduledMttos}",
    "client_address2": "${failuresFound}",
    "client_address3": "${failuresFixed}",
    "items": [
      {
        "description": "AWS Webservices",
        "quantity": 10,
        "unit_price": 50,
        "total": 500
      },
      {
        "description": "Web Design & Elementor Theme",
        "quantity": 5,
        "unit_price": 40,
        "total": 200
      },
      {
        "description": "Software Development",
        "quantity": 2,
        "unit_price": 60,
        "total": 120
      },
      {
        "description": "IT Consulting",
        "quantity": 20,
        "unit_price": 50,
        "total": 1000
      },
      {
        "description": "Social Media Page",
        "quantity": 8,
        "unit_price": 40,
        "total": 320
      }
    ],
    "gross_total": 25055
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GENERATE REPORT TO PDF',
      apiUrl: 'https://api.craftmypdf.com/v1/create',
      callType: ApiCallType.POST,
      headers: {
        'X-API-KEY': 'e494MTc0OTU6MTc1ODU6TnRtSjBGN1dyQnM5aE9KZQ=',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? pDFurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.file''',
      ));
}

class GenerateReportFromDbCall {
  static Future<ApiCallResponse> call({
    String? startDate = '',
    String? endDate = '',
    String? projectId = '00000000-0000-0000-0000-000000000000',
  }) async {
    final ffApiRequestBody = '''
{
  "_start": "${escapeStringForJson(startDate)}",
  "_end": "${escapeStringForJson(endDate)}",
  "_project_id": "${escapeStringForJson(projectId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GENERATE REPORT FROM DB',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/rpc/report_mantenimientos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? mttosProgramados(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.programados''',
      ));
  static int? fallasCorregidas(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.fallas_corregidas''',
      ));
  static int? fallasEncontradas(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.fallas_encontradas''',
      ));
  static int? totalOdeMs(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_total''',
      ));
  static int? odemsOperative(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_operativos''',
      ));
  static int? odemsProgrammed(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_programados''',
      ));
  static int? executedMttos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mantenimientos_ejecutados''',
      ));
}

class CreateReportFromMakeCall {
  static Future<ApiCallResponse> call({
    int? numberOfScheduledMaintenances,
    int? numberOfFailuresFound,
    int? numberOfMaintenanceObjectsWithMttos,
    int? numberOfMaintenanceObjects,
    int? numberOfExecutedMttos,
    int? numberOfOperativeMaintenanceObjects,
    String? startDate = '',
    String? endDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "numberOfFailuresFound": "${numberOfFailuresFound}",
  "numberOfMaintenanceObjectsWithMttos": "${numberOfMaintenanceObjectsWithMttos}",
  "numberOfMaintenanceObjects": "${numberOfMaintenanceObjects}",
  "numberOfScheduledMttos": "${numberOfScheduledMaintenances}",
  "numberOfExecutedMttos": "${numberOfExecutedMttos}",
  "numberOfOperativeMaintenanceObjects": "${numberOfOperativeMaintenanceObjects}",
  "_startDate": "${escapeStringForJson(startDate)}",
  "_endDate": "${escapeStringForJson(endDate)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CREATE REPORT FROM MAKE',
      apiUrl: 'https://hook.us2.make.com/lq7o88pwm4ic72yjn8utmvxnigdk5pcq',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllAccessRequestsCall {
  static Future<ApiCallResponse> call({
    String? requestId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET ALL ACCESS REQUESTS',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/access_requests?access_request_id=eq.${requestId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {
        'request_id': requestId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETUSERMATCHINGROLEANDPROJECTCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET USER MATCHING ROLE AND PROJECT Copy',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/users_with_projects',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetObjectsScheduleCall {
  static Future<ApiCallResponse> call({
    String? projectId = '',
    String? category = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_project_id": "${escapeStringForJson(projectId)}",
  "p_category": "${escapeStringForJson(category)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GET OBJECTS SCHEDULE',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/rpc/get_maintenance_cronograma',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? assetId(dynamic response) => (getJsonField(
        response,
        r'''$[:].odem_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? code(dynamic response) => (getJsonField(
        response,
        r'''$[:].code''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? responsible(dynamic response) => getJsonField(
        response,
        r'''$[:].responsible_id''',
        true,
      ) as List?;
  static List? executedMttoType(dynamic response) => getJsonField(
        response,
        r'''$[:].executed_type''',
        true,
      ) as List?;
  static List? lastMttoDate(dynamic response) => getJsonField(
        response,
        r'''$[:].last_executed_date''',
        true,
      ) as List?;
  static List? scheduledMttoType(dynamic response) => getJsonField(
        response,
        r'''$[:].scheduled_type''',
        true,
      ) as List?;
  static List? nextMttoDate(dynamic response) => getJsonField(
        response,
        r'''$[:].next_scheduled_date''',
        true,
      ) as List?;
  static List<String>? assetEntryDate(dynamic response) => (getJsonField(
        response,
        r'''$[:].entry_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? mttoFrequency(dynamic response) => (getJsonField(
        response,
        r'''$[:].maintenance_frequency''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? assetCategory(dynamic response) => (getJsonField(
        response,
        r'''$[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? assetName(dynamic response) => (getJsonField(
        response,
        r'''$[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GETMAINTENANCESWITHPROJECTCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET MAINTENANCES WITH PROJECT Copy',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenances_with_project?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? mttos(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class CreateReportOrInventoryFromMakeCall {
  static Future<ApiCallResponse> call({
    int? numberOfScheduledMaintenances,
    int? numberOfFailuresFound,
    int? numberOfMaintenanceObjectsWithMttos,
    int? numberOfMaintenanceObjects,
    int? numberOfExecutedMttos,
    int? numberOfOperativeMaintenanceObjects,
    String? startDate = '',
    String? endDate = '',
<<<<<<< HEAD
    dynamic objectsInventoryJson,
=======
    dynamic? objectsInventoryJson,
>>>>>>> master
    String? action = '',
  }) async {
    final objectsInventory = _serializeJson(objectsInventoryJson, true);
    final ffApiRequestBody = '''
{
  "action": "${escapeStringForJson(action)}",
  "numberOfFailuresFound": "${numberOfFailuresFound}",
  "numberOfMaintenanceObjectsWithMttos": "${numberOfMaintenanceObjectsWithMttos}",
  "numberOfMaintenanceObjects": "${numberOfMaintenanceObjects}",
  "numberOfScheduledMttos": "${numberOfScheduledMaintenances}",
  "numberOfExecutedMttos": "${numberOfExecutedMttos}",
  "numberOfOperativeMaintenanceObjects": "${numberOfOperativeMaintenanceObjects}",
  "_startDate": "${escapeStringForJson(startDate)}",
  "_endDate": "${escapeStringForJson(endDate)}",
  "objects": ${objectsInventory}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CREATE REPORT OR INVENTORY FROM MAKE',
      apiUrl: 'https://hook.us2.make.com/lq7o88pwm4ic72yjn8utmvxnigdk5pcq',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUnassignedObjectsWithNoMttoCall {
  static Future<ApiCallResponse> call({
    String? projectId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET UNASSIGNED OBJECTS WITH NO MTTO',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/unassigned_objects?assigned_project_id=eq.${projectId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {
        'project_id': projectId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GETALLMAINTENANCEOBJECTSCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET ALL MAINTENANCE OBJECTS Copy',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenance_objects',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? requestUuId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static int? roleId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].role_id''',
      ));
  static String? requestedProject(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].project_requested''',
      ));
  static String? accessRequestId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].access_request_id''',
      ));
}

class GetAllMaintenancesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET ALL  MAINTENANCES',
      apiUrl: 'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenances',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? requestUuId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static int? roleId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].role_id''',
      ));
  static String? requestedProject(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].project_requested''',
      ));
  static String? accessRequestId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].access_request_id''',
      ));
}

class GETMAINTENANCESWITHPROJECTCopyCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET MAINTENANCES WITH PROJECT Copy Copy',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenances_with_project?select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? mttos(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class GetLatestMaintenancesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET LATEST MAINTENANCES',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenances?select=*&limit=10',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetObjectsWithNoMttoCall {
  static Future<ApiCallResponse> call({
    String? projectId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "p_project_id": "${escapeStringForJson(projectId)}",
  "p_limit": 500
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GET OBJECTS WITH NO MTTO',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/rpc/unassigned_objects_by_project',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetAllUsersByProjectCall {
  static Future<ApiCallResponse> call({
    String? projectId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GET ALL USERS BY PROJECT',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/user_projects?project_id=eq.${projectId}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
      },
      params: {
        'projectId': projectId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? requestUuId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].name''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].email''',
      ));
  static int? roleId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$[:].role_id''',
      ));
  static String? requestedProject(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].project_requested''',
      ));
  static String? accessRequestId(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].access_request_id''',
      ));
}

class GetObjectsInventoryCall {
  static Future<ApiCallResponse> call({
    String? projectId = '',
    String? category = '',
  }) async {
    final ffApiRequestBody = '''
{
  "project_uuid": "${escapeStringForJson(projectId)}",
  "category_filter": "${escapeStringForJson(category)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GET OBJECTS INVENTORY',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/rpc/objects_inventory',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? mttosProgramados(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.programados''',
      ));
  static int? fallasCorregidas(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.fallas_corregidas''',
      ));
  static int? fallasEncontradas(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.fallas_encontradas''',
      ));
  static int? totalOdeMs(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_total''',
      ));
  static int? odemsOperative(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_operativos''',
      ));
  static int? odemsProgrammed(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.odems_programados''',
      ));
  static int? executedMttos(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.mantenimientos_ejecutados''',
      ));
}

class SearchForAssetsWithoutAssignedMaintenanceCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SEARCH FOR ASSETS WITHOUT ASSIGNED MAINTENANCE',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/unassigned_objects?select=*&code=ilike.*${searchString}*',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchForFullAssetsInventoryCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SEARCH FOR FULL ASSETS INVENTORY',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenance_objects?select=*&code=ilike.*${searchString}*',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchForMttoGeneralScheduleCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'SEARCH FOR MTTO GENERAL SCHEDULE',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/rest/v1/maintenance_cronograma?select=*&code=ilike.*${searchString}*',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UploadToSupabaseStorageCall {
  static Future<ApiCallResponse> call({
    FFUploadedFile? image,
    String? randomName = '',
    String? extension = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'UPLOAD TO SUPABASE STORAGE',
      apiUrl:
          'https://rzmrtifzceygkbfafemb.supabase.co/storage/v1/object/disicheck_all_media/disicheck_all_media/${randomName}.${extension}',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY0MzQ4NjUsImV4cCI6MjA1MjAxMDg2NX0.IaIPRTyK9SVt1bPyW8OMdgC2tJLnF4xSjzmPQpzgJOs',
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ6bXJ0aWZ6Y2V5Z2tiZmFmZW1iIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjQzNDg2NSwiZXhwIjoyMDUyMDEwODY1fQ.FhDJM1RO4l_sshz1_DFvhVOGXVtkW8Z8cNwCRY0h6qE',
      },
      params: {
        'image': image,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
