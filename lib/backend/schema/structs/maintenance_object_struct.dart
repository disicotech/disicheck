// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaintenanceObjectStruct extends BaseStruct {
  MaintenanceObjectStruct({
    String? id,
    String? code,
    String? ref,
    String? name,
    String? category,
    String? currentState,
    String? criticalTaskPerformed,
    String? assignedProjectId,
    bool? isActive,
    String? adquisitionDate,
    String? entryDate,
    String? createdAt,
    String? updatedAt,
    int? registrantDni,
    String? moImage,
    String? criticalityLevel,
    String? serviceLife,
    String? transferLocation,
    String? lastMaintenanceDate,
    String? maintenanceFrecuency,
    String? responsibleId,
    List<MetadataForMttoObjectStruct>? metadata,
  })  : _id = id,
        _code = code,
        _ref = ref,
        _name = name,
        _category = category,
        _currentState = currentState,
        _criticalTaskPerformed = criticalTaskPerformed,
        _assignedProjectId = assignedProjectId,
        _isActive = isActive,
        _adquisitionDate = adquisitionDate,
        _entryDate = entryDate,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        _registrantDni = registrantDni,
        _moImage = moImage,
        _criticalityLevel = criticalityLevel,
        _serviceLife = serviceLife,
        _transferLocation = transferLocation,
        _lastMaintenanceDate = lastMaintenanceDate,
        _maintenanceFrecuency = maintenanceFrecuency,
        _responsibleId = responsibleId,
        _metadata = metadata;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "code" field.
  String? _code;
  String get code => _code ?? '';
  set code(String? val) => _code = val;

  bool hasCode() => _code != null;

  // "ref" field.
  String? _ref;
  String get ref => _ref ?? '';
  set ref(String? val) => _ref = val;

  bool hasRef() => _ref != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "current_state" field.
  String? _currentState;
  String get currentState => _currentState ?? '';
  set currentState(String? val) => _currentState = val;

  bool hasCurrentState() => _currentState != null;

  // "critical_task_performed" field.
  String? _criticalTaskPerformed;
  String get criticalTaskPerformed => _criticalTaskPerformed ?? '';
  set criticalTaskPerformed(String? val) => _criticalTaskPerformed = val;

  bool hasCriticalTaskPerformed() => _criticalTaskPerformed != null;

  // "assigned_project_id" field.
  String? _assignedProjectId;
  String get assignedProjectId => _assignedProjectId ?? '';
  set assignedProjectId(String? val) => _assignedProjectId = val;

  bool hasAssignedProjectId() => _assignedProjectId != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "adquisition_date" field.
  String? _adquisitionDate;
  String get adquisitionDate => _adquisitionDate ?? '';
  set adquisitionDate(String? val) => _adquisitionDate = val;

  bool hasAdquisitionDate() => _adquisitionDate != null;

  // "entry_date" field.
  String? _entryDate;
  String get entryDate => _entryDate ?? '';
  set entryDate(String? val) => _entryDate = val;

  bool hasEntryDate() => _entryDate != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  // "registrant_dni" field.
  int? _registrantDni;
  int get registrantDni => _registrantDni ?? 0;
  set registrantDni(int? val) => _registrantDni = val;

  void incrementRegistrantDni(int amount) =>
      registrantDni = registrantDni + amount;

  bool hasRegistrantDni() => _registrantDni != null;

  // "mo_image" field.
  String? _moImage;
  String get moImage => _moImage ?? '';
  set moImage(String? val) => _moImage = val;

  bool hasMoImage() => _moImage != null;

  // "criticality_level" field.
  String? _criticalityLevel;
  String get criticalityLevel => _criticalityLevel ?? '';
  set criticalityLevel(String? val) => _criticalityLevel = val;

  bool hasCriticalityLevel() => _criticalityLevel != null;

  // "service_life" field.
  String? _serviceLife;
  String get serviceLife => _serviceLife ?? '';
  set serviceLife(String? val) => _serviceLife = val;

  bool hasServiceLife() => _serviceLife != null;

  // "transfer_location" field.
  String? _transferLocation;
  String get transferLocation => _transferLocation ?? '';
  set transferLocation(String? val) => _transferLocation = val;

  bool hasTransferLocation() => _transferLocation != null;

  // "last_maintenance_date" field.
  String? _lastMaintenanceDate;
  String get lastMaintenanceDate => _lastMaintenanceDate ?? '';
  set lastMaintenanceDate(String? val) => _lastMaintenanceDate = val;

  bool hasLastMaintenanceDate() => _lastMaintenanceDate != null;

  // "maintenance_frecuency" field.
  String? _maintenanceFrecuency;
  String get maintenanceFrecuency => _maintenanceFrecuency ?? '';
  set maintenanceFrecuency(String? val) => _maintenanceFrecuency = val;

  bool hasMaintenanceFrecuency() => _maintenanceFrecuency != null;

  // "responsible_id" field.
  String? _responsibleId;
  String get responsibleId => _responsibleId ?? '';
  set responsibleId(String? val) => _responsibleId = val;

  bool hasResponsibleId() => _responsibleId != null;

  // "metadata" field.
  List<MetadataForMttoObjectStruct>? _metadata;
  List<MetadataForMttoObjectStruct> get metadata => _metadata ?? const [];
  set metadata(List<MetadataForMttoObjectStruct>? val) => _metadata = val;

  void updateMetadata(Function(List<MetadataForMttoObjectStruct>) updateFn) {
    updateFn(_metadata ??= []);
  }

  bool hasMetadata() => _metadata != null;

  static MaintenanceObjectStruct fromMap(Map<String, dynamic> data) =>
      MaintenanceObjectStruct(
        id: data['id'] as String?,
        code: data['code'] as String?,
        ref: data['ref'] as String?,
        name: data['name'] as String?,
        category: data['category'] as String?,
        currentState: data['current_state'] as String?,
        criticalTaskPerformed: data['critical_task_performed'] as String?,
        assignedProjectId: data['assigned_project_id'] as String?,
        isActive: data['is_active'] as bool?,
        adquisitionDate: data['adquisition_date'] as String?,
        entryDate: data['entry_date'] as String?,
        createdAt: data['created_at'] as String?,
        updatedAt: data['updated_at'] as String?,
        registrantDni: castToType<int>(data['registrant_dni']),
        moImage: data['mo_image'] as String?,
        criticalityLevel: data['criticality_level'] as String?,
        serviceLife: data['service_life'] as String?,
        transferLocation: data['transfer_location'] as String?,
        lastMaintenanceDate: data['last_maintenance_date'] as String?,
        maintenanceFrecuency: data['maintenance_frecuency'] as String?,
        responsibleId: data['responsible_id'] as String?,
        metadata: getStructList(
          data['metadata'],
          MetadataForMttoObjectStruct.fromMap,
        ),
      );

  static MaintenanceObjectStruct? maybeFromMap(dynamic data) => data is Map
      ? MaintenanceObjectStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'code': _code,
        'ref': _ref,
        'name': _name,
        'category': _category,
        'current_state': _currentState,
        'critical_task_performed': _criticalTaskPerformed,
        'assigned_project_id': _assignedProjectId,
        'is_active': _isActive,
        'adquisition_date': _adquisitionDate,
        'entry_date': _entryDate,
        'created_at': _createdAt,
        'updated_at': _updatedAt,
        'registrant_dni': _registrantDni,
        'mo_image': _moImage,
        'criticality_level': _criticalityLevel,
        'service_life': _serviceLife,
        'transfer_location': _transferLocation,
        'last_maintenance_date': _lastMaintenanceDate,
        'maintenance_frecuency': _maintenanceFrecuency,
        'responsible_id': _responsibleId,
        'metadata': _metadata?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'code': serializeParam(
          _code,
          ParamType.String,
        ),
        'ref': serializeParam(
          _ref,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'current_state': serializeParam(
          _currentState,
          ParamType.String,
        ),
        'critical_task_performed': serializeParam(
          _criticalTaskPerformed,
          ParamType.String,
        ),
        'assigned_project_id': serializeParam(
          _assignedProjectId,
          ParamType.String,
        ),
        'is_active': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'adquisition_date': serializeParam(
          _adquisitionDate,
          ParamType.String,
        ),
        'entry_date': serializeParam(
          _entryDate,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updated_at': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
        'registrant_dni': serializeParam(
          _registrantDni,
          ParamType.int,
        ),
        'mo_image': serializeParam(
          _moImage,
          ParamType.String,
        ),
        'criticality_level': serializeParam(
          _criticalityLevel,
          ParamType.String,
        ),
        'service_life': serializeParam(
          _serviceLife,
          ParamType.String,
        ),
        'transfer_location': serializeParam(
          _transferLocation,
          ParamType.String,
        ),
        'last_maintenance_date': serializeParam(
          _lastMaintenanceDate,
          ParamType.String,
        ),
        'maintenance_frecuency': serializeParam(
          _maintenanceFrecuency,
          ParamType.String,
        ),
        'responsible_id': serializeParam(
          _responsibleId,
          ParamType.String,
        ),
        'metadata': serializeParam(
          _metadata,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MaintenanceObjectStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MaintenanceObjectStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        code: deserializeParam(
          data['code'],
          ParamType.String,
          false,
        ),
        ref: deserializeParam(
          data['ref'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        currentState: deserializeParam(
          data['current_state'],
          ParamType.String,
          false,
        ),
        criticalTaskPerformed: deserializeParam(
          data['critical_task_performed'],
          ParamType.String,
          false,
        ),
        assignedProjectId: deserializeParam(
          data['assigned_project_id'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['is_active'],
          ParamType.bool,
          false,
        ),
        adquisitionDate: deserializeParam(
          data['adquisition_date'],
          ParamType.String,
          false,
        ),
        entryDate: deserializeParam(
          data['entry_date'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updated_at'],
          ParamType.String,
          false,
        ),
        registrantDni: deserializeParam(
          data['registrant_dni'],
          ParamType.int,
          false,
        ),
        moImage: deserializeParam(
          data['mo_image'],
          ParamType.String,
          false,
        ),
        criticalityLevel: deserializeParam(
          data['criticality_level'],
          ParamType.String,
          false,
        ),
        serviceLife: deserializeParam(
          data['service_life'],
          ParamType.String,
          false,
        ),
        transferLocation: deserializeParam(
          data['transfer_location'],
          ParamType.String,
          false,
        ),
        lastMaintenanceDate: deserializeParam(
          data['last_maintenance_date'],
          ParamType.String,
          false,
        ),
        maintenanceFrecuency: deserializeParam(
          data['maintenance_frecuency'],
          ParamType.String,
          false,
        ),
        responsibleId: deserializeParam(
          data['responsible_id'],
          ParamType.String,
          false,
        ),
        metadata: deserializeStructParam<MetadataForMttoObjectStruct>(
          data['metadata'],
          ParamType.DataStruct,
          true,
          structBuilder: MetadataForMttoObjectStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MaintenanceObjectStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MaintenanceObjectStruct &&
        id == other.id &&
        code == other.code &&
        ref == other.ref &&
        name == other.name &&
        category == other.category &&
        currentState == other.currentState &&
        criticalTaskPerformed == other.criticalTaskPerformed &&
        assignedProjectId == other.assignedProjectId &&
        isActive == other.isActive &&
        adquisitionDate == other.adquisitionDate &&
        entryDate == other.entryDate &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        registrantDni == other.registrantDni &&
        moImage == other.moImage &&
        criticalityLevel == other.criticalityLevel &&
        serviceLife == other.serviceLife &&
        transferLocation == other.transferLocation &&
        lastMaintenanceDate == other.lastMaintenanceDate &&
        maintenanceFrecuency == other.maintenanceFrecuency &&
        responsibleId == other.responsibleId &&
        listEquality.equals(metadata, other.metadata);
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        code,
        ref,
        name,
        category,
        currentState,
        criticalTaskPerformed,
        assignedProjectId,
        isActive,
        adquisitionDate,
        entryDate,
        createdAt,
        updatedAt,
        registrantDni,
        moImage,
        criticalityLevel,
        serviceLife,
        transferLocation,
        lastMaintenanceDate,
        maintenanceFrecuency,
        responsibleId,
        metadata
      ]);
}

MaintenanceObjectStruct createMaintenanceObjectStruct({
  String? id,
  String? code,
  String? ref,
  String? name,
  String? category,
  String? currentState,
  String? criticalTaskPerformed,
  String? assignedProjectId,
  bool? isActive,
  String? adquisitionDate,
  String? entryDate,
  String? createdAt,
  String? updatedAt,
  int? registrantDni,
  String? moImage,
  String? criticalityLevel,
  String? serviceLife,
  String? transferLocation,
  String? lastMaintenanceDate,
  String? maintenanceFrecuency,
  String? responsibleId,
}) =>
    MaintenanceObjectStruct(
      id: id,
      code: code,
      ref: ref,
      name: name,
      category: category,
      currentState: currentState,
      criticalTaskPerformed: criticalTaskPerformed,
      assignedProjectId: assignedProjectId,
      isActive: isActive,
      adquisitionDate: adquisitionDate,
      entryDate: entryDate,
      createdAt: createdAt,
      updatedAt: updatedAt,
      registrantDni: registrantDni,
      moImage: moImage,
      criticalityLevel: criticalityLevel,
      serviceLife: serviceLife,
      transferLocation: transferLocation,
      lastMaintenanceDate: lastMaintenanceDate,
      maintenanceFrecuency: maintenanceFrecuency,
      responsibleId: responsibleId,
    );
