// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaintenanceStruct extends BaseStruct {
  MaintenanceStruct({
    String? id,
    String? odemId,
    String? responsibleId,
    String? maintenanceCode,
    String? typeOfMaintenance,
    String? maintenanceFinalStatus,
    String? frequency,
    DateTime? startDate,
    String? status,
    List<ActivityStruct>? activities,
    String? observations,
    String? specificActivities,
    String? maintenanceProvider,
    String? authorizingSignature,
    String? transferLocation,
    String? reviewerId,
    String? approverId,
    bool? requiresMaintenanceProvider,
    String? numberOfScheduledMaintenance,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? maintenancePhotographicEvidence,
  })  : _id = id,
        _odemId = odemId,
        _responsibleId = responsibleId,
        _maintenanceCode = maintenanceCode,
        _typeOfMaintenance = typeOfMaintenance,
        _maintenanceFinalStatus = maintenanceFinalStatus,
        _frequency = frequency,
        _startDate = startDate,
        _status = status,
        _activities = activities,
        _observations = observations,
        _specificActivities = specificActivities,
        _maintenanceProvider = maintenanceProvider,
        _authorizingSignature = authorizingSignature,
        _transferLocation = transferLocation,
        _reviewerId = reviewerId,
        _approverId = approverId,
        _requiresMaintenanceProvider = requiresMaintenanceProvider,
        _numberOfScheduledMaintenance = numberOfScheduledMaintenance,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _maintenancePhotographicEvidence = maintenancePhotographicEvidence;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "odem_id" field.
  String? _odemId;
  String get odemId => _odemId ?? '';
  set odemId(String? val) => _odemId = val;

  bool hasOdemId() => _odemId != null;

  // "responsible_id" field.
  String? _responsibleId;
  String get responsibleId => _responsibleId ?? '';
  set responsibleId(String? val) => _responsibleId = val;

  bool hasResponsibleId() => _responsibleId != null;

  // "maintenance_code" field.
  String? _maintenanceCode;
  String get maintenanceCode => _maintenanceCode ?? '';
  set maintenanceCode(String? val) => _maintenanceCode = val;

  bool hasMaintenanceCode() => _maintenanceCode != null;

  // "type_of_maintenance" field.
  String? _typeOfMaintenance;
  String get typeOfMaintenance => _typeOfMaintenance ?? '';
  set typeOfMaintenance(String? val) => _typeOfMaintenance = val;

  bool hasTypeOfMaintenance() => _typeOfMaintenance != null;

  // "maintenance_final_status" field.
  String? _maintenanceFinalStatus;
  String get maintenanceFinalStatus => _maintenanceFinalStatus ?? '';
  set maintenanceFinalStatus(String? val) => _maintenanceFinalStatus = val;

  bool hasMaintenanceFinalStatus() => _maintenanceFinalStatus != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;

  bool hasFrequency() => _frequency != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "activities" field.
  List<ActivityStruct>? _activities;
  List<ActivityStruct> get activities => _activities ?? const [];
  set activities(List<ActivityStruct>? val) => _activities = val;

  void updateActivities(Function(List<ActivityStruct>) updateFn) {
    updateFn(_activities ??= []);
  }

  bool hasActivities() => _activities != null;

  // "observations" field.
  String? _observations;
  String get observations => _observations ?? '';
  set observations(String? val) => _observations = val;

  bool hasObservations() => _observations != null;

  // "specific_activities" field.
  String? _specificActivities;
  String get specificActivities => _specificActivities ?? '';
  set specificActivities(String? val) => _specificActivities = val;

  bool hasSpecificActivities() => _specificActivities != null;

  // "maintenance_provider" field.
  String? _maintenanceProvider;
  String get maintenanceProvider => _maintenanceProvider ?? '';
  set maintenanceProvider(String? val) => _maintenanceProvider = val;

  bool hasMaintenanceProvider() => _maintenanceProvider != null;

  // "authorizing_signature" field.
  String? _authorizingSignature;
  String get authorizingSignature => _authorizingSignature ?? '';
  set authorizingSignature(String? val) => _authorizingSignature = val;

  bool hasAuthorizingSignature() => _authorizingSignature != null;

  // "transfer_location" field.
  String? _transferLocation;
  String get transferLocation => _transferLocation ?? '';
  set transferLocation(String? val) => _transferLocation = val;

  bool hasTransferLocation() => _transferLocation != null;

  // "reviewer_id" field.
  String? _reviewerId;
  String get reviewerId => _reviewerId ?? '';
  set reviewerId(String? val) => _reviewerId = val;

  bool hasReviewerId() => _reviewerId != null;

  // "approver_id" field.
  String? _approverId;
  String get approverId => _approverId ?? '';
  set approverId(String? val) => _approverId = val;

  bool hasApproverId() => _approverId != null;

  // "requires_maintenance_provider" field.
  bool? _requiresMaintenanceProvider;
  bool get requiresMaintenanceProvider => _requiresMaintenanceProvider ?? false;
  set requiresMaintenanceProvider(bool? val) =>
      _requiresMaintenanceProvider = val;

  bool hasRequiresMaintenanceProvider() => _requiresMaintenanceProvider != null;

  // "number_of_scheduled_maintenance" field.
  String? _numberOfScheduledMaintenance;
  String get numberOfScheduledMaintenance =>
      _numberOfScheduledMaintenance ?? '';
  set numberOfScheduledMaintenance(String? val) =>
      _numberOfScheduledMaintenance = val;

  bool hasNumberOfScheduledMaintenance() =>
      _numberOfScheduledMaintenance != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "maintenance_photographic_evidence" field.
  String? _maintenancePhotographicEvidence;
  String get maintenancePhotographicEvidence =>
      _maintenancePhotographicEvidence ?? '';
  set maintenancePhotographicEvidence(String? val) =>
      _maintenancePhotographicEvidence = val;

  bool hasMaintenancePhotographicEvidence() =>
      _maintenancePhotographicEvidence != null;

  static MaintenanceStruct fromMap(Map<String, dynamic> data) =>
      MaintenanceStruct(
        id: data['id'] as String?,
        odemId: data['odem_id'] as String?,
        responsibleId: data['responsible_id'] as String?,
        maintenanceCode: data['maintenance_code'] as String?,
        typeOfMaintenance: data['type_of_maintenance'] as String?,
        maintenanceFinalStatus: data['maintenance_final_status'] as String?,
        frequency: data['frequency'] as String?,
        startDate: data['start_date'] as DateTime?,
        status: data['status'] as String?,
        activities: getStructList(
          data['activities'],
          ActivityStruct.fromMap,
        ),
        observations: data['observations'] as String?,
        specificActivities: data['specific_activities'] as String?,
        maintenanceProvider: data['maintenance_provider'] as String?,
        authorizingSignature: data['authorizing_signature'] as String?,
        transferLocation: data['transfer_location'] as String?,
        reviewerId: data['reviewer_id'] as String?,
        approverId: data['approver_id'] as String?,
        requiresMaintenanceProvider:
            data['requires_maintenance_provider'] as bool?,
        numberOfScheduledMaintenance:
            data['number_of_scheduled_maintenance'] as String?,
        createdAt: data['created_at'] as DateTime?,
        updatedAt: data['updated_at'] as DateTime?,
        maintenancePhotographicEvidence:
            data['maintenance_photographic_evidence'] as String?,
      );

  static MaintenanceStruct? maybeFromMap(dynamic data) => data is Map
      ? MaintenanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'odem_id': _odemId,
        'responsible_id': _responsibleId,
        'maintenance_code': _maintenanceCode,
        'type_of_maintenance': _typeOfMaintenance,
        'maintenance_final_status': _maintenanceFinalStatus,
        'frequency': _frequency,
        'start_date': _startDate,
        'status': _status,
        'activities': _activities?.map((e) => e.toMap()).toList(),
        'observations': _observations,
        'specific_activities': _specificActivities,
        'maintenance_provider': _maintenanceProvider,
        'authorizing_signature': _authorizingSignature,
        'transfer_location': _transferLocation,
        'reviewer_id': _reviewerId,
        'approver_id': _approverId,
        'requires_maintenance_provider': _requiresMaintenanceProvider,
        'number_of_scheduled_maintenance': _numberOfScheduledMaintenance,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'maintenance_photographic_evidence': _maintenancePhotographicEvidence,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'odem_id': serializeParam(
          _odemId,
          ParamType.String,
        ),
        'responsible_id': serializeParam(
          _responsibleId,
          ParamType.String,
        ),
        'maintenance_code': serializeParam(
          _maintenanceCode,
          ParamType.String,
        ),
        'type_of_maintenance': serializeParam(
          _typeOfMaintenance,
          ParamType.String,
        ),
        'maintenance_final_status': serializeParam(
          _maintenanceFinalStatus,
          ParamType.String,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'activities': serializeParam(
          _activities,
          ParamType.DataStruct,
          isList: true,
        ),
        'observations': serializeParam(
          _observations,
          ParamType.String,
        ),
        'specific_activities': serializeParam(
          _specificActivities,
          ParamType.String,
        ),
        'maintenance_provider': serializeParam(
          _maintenanceProvider,
          ParamType.String,
        ),
        'authorizing_signature': serializeParam(
          _authorizingSignature,
          ParamType.String,
        ),
        'transfer_location': serializeParam(
          _transferLocation,
          ParamType.String,
        ),
        'reviewer_id': serializeParam(
          _reviewerId,
          ParamType.String,
        ),
        'approver_id': serializeParam(
          _approverId,
          ParamType.String,
        ),
        'requires_maintenance_provider': serializeParam(
          _requiresMaintenanceProvider,
          ParamType.bool,
        ),
        'number_of_scheduled_maintenance': serializeParam(
          _numberOfScheduledMaintenance,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
        'maintenance_photographic_evidence': serializeParam(
          _maintenancePhotographicEvidence,
          ParamType.String,
        ),
      }.withoutNulls;

  static MaintenanceStruct fromSerializableMap(Map<String, dynamic> data) =>
      MaintenanceStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        odemId: deserializeParam(
          data['odem_id'],
          ParamType.String,
          false,
        ),
        responsibleId: deserializeParam(
          data['responsible_id'],
          ParamType.String,
          false,
        ),
        maintenanceCode: deserializeParam(
          data['maintenance_code'],
          ParamType.String,
          false,
        ),
        typeOfMaintenance: deserializeParam(
          data['type_of_maintenance'],
          ParamType.String,
          false,
        ),
        maintenanceFinalStatus: deserializeParam(
          data['maintenance_final_status'],
          ParamType.String,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        activities: deserializeStructParam<ActivityStruct>(
          data['activities'],
          ParamType.DataStruct,
          true,
          structBuilder: ActivityStruct.fromSerializableMap,
        ),
        observations: deserializeParam(
          data['observations'],
          ParamType.String,
          false,
        ),
        specificActivities: deserializeParam(
          data['specific_activities'],
          ParamType.String,
          false,
        ),
        maintenanceProvider: deserializeParam(
          data['maintenance_provider'],
          ParamType.String,
          false,
        ),
        authorizingSignature: deserializeParam(
          data['authorizing_signature'],
          ParamType.String,
          false,
        ),
        transferLocation: deserializeParam(
          data['transfer_location'],
          ParamType.String,
          false,
        ),
        reviewerId: deserializeParam(
          data['reviewer_id'],
          ParamType.String,
          false,
        ),
        approverId: deserializeParam(
          data['approver_id'],
          ParamType.String,
          false,
        ),
        requiresMaintenanceProvider: deserializeParam(
          data['requires_maintenance_provider'],
          ParamType.bool,
          false,
        ),
        numberOfScheduledMaintenance: deserializeParam(
          data['number_of_scheduled_maintenance'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.DateTime,
          false,
        ),
        maintenancePhotographicEvidence: deserializeParam(
          data['maintenance_photographic_evidence'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MaintenanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MaintenanceStruct &&
        id == other.id &&
        odemId == other.odemId &&
        responsibleId == other.responsibleId &&
        maintenanceCode == other.maintenanceCode &&
        typeOfMaintenance == other.typeOfMaintenance &&
        maintenanceFinalStatus == other.maintenanceFinalStatus &&
        frequency == other.frequency &&
        startDate == other.startDate &&
        status == other.status &&
        listEquality.equals(activities, other.activities) &&
        observations == other.observations &&
        specificActivities == other.specificActivities &&
        maintenanceProvider == other.maintenanceProvider &&
        authorizingSignature == other.authorizingSignature &&
        transferLocation == other.transferLocation &&
        reviewerId == other.reviewerId &&
        approverId == other.approverId &&
        requiresMaintenanceProvider == other.requiresMaintenanceProvider &&
        numberOfScheduledMaintenance == other.numberOfScheduledMaintenance &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        maintenancePhotographicEvidence ==
            other.maintenancePhotographicEvidence;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        odemId,
        responsibleId,
        maintenanceCode,
        typeOfMaintenance,
        maintenanceFinalStatus,
        frequency,
        startDate,
        status,
        activities,
        observations,
        specificActivities,
        maintenanceProvider,
        authorizingSignature,
        transferLocation,
        reviewerId,
        approverId,
        requiresMaintenanceProvider,
        numberOfScheduledMaintenance,
        createdAt,
        updatedAt,
        maintenancePhotographicEvidence
      ]);
}

MaintenanceStruct createMaintenanceStruct({
  String? id,
  String? odemId,
  String? responsibleId,
  String? maintenanceCode,
  String? typeOfMaintenance,
  String? maintenanceFinalStatus,
  String? frequency,
  DateTime? startDate,
  String? status,
  String? observations,
  String? specificActivities,
  String? maintenanceProvider,
  String? authorizingSignature,
  String? transferLocation,
  String? reviewerId,
  String? approverId,
  bool? requiresMaintenanceProvider,
  String? numberOfScheduledMaintenance,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? maintenancePhotographicEvidence,
}) =>
    MaintenanceStruct(
      id: id,
      odemId: odemId,
      responsibleId: responsibleId,
      maintenanceCode: maintenanceCode,
      typeOfMaintenance: typeOfMaintenance,
      maintenanceFinalStatus: maintenanceFinalStatus,
      frequency: frequency,
      startDate: startDate,
      status: status,
      observations: observations,
      specificActivities: specificActivities,
      maintenanceProvider: maintenanceProvider,
      authorizingSignature: authorizingSignature,
      transferLocation: transferLocation,
      reviewerId: reviewerId,
      approverId: approverId,
      requiresMaintenanceProvider: requiresMaintenanceProvider,
      numberOfScheduledMaintenance: numberOfScheduledMaintenance,
      createdAt: createdAt,
      updatedAt: updatedAt,
      maintenancePhotographicEvidence: maintenancePhotographicEvidence,
    );
