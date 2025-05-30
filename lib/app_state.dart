import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/schema/structs/index.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _userRoles =
          await secureStorage.getStringList('ff_userRoles') ?? _userRoles;
    });
    await _safeInitAsync(() async {
      _authenticatedRole = await secureStorage.getInt('ff_authenticatedRole') ??
          _authenticatedRole;
    });
    await _safeInitAsync(() async {
      _moCategories =
          await secureStorage.getStringList('ff_moCategories') ?? _moCategories;
    });
    await _safeInitAsync(() async {
      _currentProject =
          await secureStorage.getString('ff_currentProject') ?? _currentProject;
    });
    await _safeInitAsync(() async {
      _authenticatedUserName =
          await secureStorage.getString('ff_authenticatedUserName') ??
              _authenticatedUserName;
    });
    await _safeInitAsync(() async {
      _inventoryList = (await secureStorage.getStringList('ff_inventoryList'))
              ?.map((x) {
                try {
                  return MaintenanceObjectStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _inventoryList;
    });
    await _safeInitAsync(() async {
      _userMaintenances = (await secureStorage
                  .getStringList('ff_userMaintenances'))
              ?.map((x) {
                try {
                  return MaintenanceStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _userMaintenances;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_createMaintenance') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_createMaintenance') ?? '{}';
          _createMaintenance =
              MaintenanceStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _userList = (await secureStorage.getStringList('ff_userList'))
              ?.map((x) {
                try {
                  return ProjectUsersStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _userList;
    });
    await _safeInitAsync(() async {
      _dispCriteria = (await secureStorage.getStringList('ff_dispCriteria'))
              ?.map((x) {
                try {
                  return OdemDispoCriteriaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _dispCriteria;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_testMantenimientos') != null) {
        try {
          _testMantenimientos = jsonDecode(
              await secureStorage.getString('ff_testMantenimientos') ?? '');
        } catch (e) {
          print("Can't decode persisted json. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _SUPABASESTORAGEURL =
          await secureStorage.getString('ff_SUPABASESTORAGEURL') ??
              _SUPABASESTORAGEURL;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _selectedMOCategories = [];
  List<String> get selectedMOCategories => _selectedMOCategories;
  set selectedMOCategories(List<String> value) {
    _selectedMOCategories = value;
  }

  void addToSelectedMOCategories(String value) {
    selectedMOCategories.add(value);
  }

  void removeFromSelectedMOCategories(String value) {
    selectedMOCategories.remove(value);
  }

  void removeAtIndexFromSelectedMOCategories(int index) {
    selectedMOCategories.removeAt(index);
  }

  void updateSelectedMOCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    selectedMOCategories[index] = updateFn(_selectedMOCategories[index]);
  }

  void insertAtIndexInSelectedMOCategories(int index, String value) {
    selectedMOCategories.insert(index, value);
  }

  List<String> _userRoles = [
    'Administrador',
    'Coordinador',
    'Responsable Mtto',
    'Invitado'
  ];
  List<String> get userRoles => _userRoles;
  set userRoles(List<String> value) {
    _userRoles = value;
    secureStorage.setStringList('ff_userRoles', value);
  }

  void deleteUserRoles() {
    secureStorage.delete(key: 'ff_userRoles');
  }

  void addToUserRoles(String value) {
    userRoles.add(value);
    secureStorage.setStringList('ff_userRoles', _userRoles);
  }

  void removeFromUserRoles(String value) {
    userRoles.remove(value);
    secureStorage.setStringList('ff_userRoles', _userRoles);
  }

  void removeAtIndexFromUserRoles(int index) {
    userRoles.removeAt(index);
    secureStorage.setStringList('ff_userRoles', _userRoles);
  }

  void updateUserRolesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    userRoles[index] = updateFn(_userRoles[index]);
    secureStorage.setStringList('ff_userRoles', _userRoles);
  }

  void insertAtIndexInUserRoles(int index, String value) {
    userRoles.insert(index, value);
    secureStorage.setStringList('ff_userRoles', _userRoles);
  }

  List<RolesStruct> _roles = [
    RolesStruct.fromSerializableMap(
        jsonDecode('{\"Name\":\"Administrador\",\"id\":\"1\"}')),
    RolesStruct.fromSerializableMap(
        jsonDecode('{\"Name\":\"Coordinador\",\"id\":\"2\"}')),
    RolesStruct.fromSerializableMap(
        jsonDecode('{\"Name\":\"Responsable Mtto.\",\"id\":\"3\"}')),
    RolesStruct.fromSerializableMap(
        jsonDecode('{\"Name\":\"Invitado\",\"id\":\"4\"}'))
  ];
  List<RolesStruct> get roles => _roles;
  set roles(List<RolesStruct> value) {
    _roles = value;
  }

  void addToRoles(RolesStruct value) {
    roles.add(value);
  }

  void removeFromRoles(RolesStruct value) {
    roles.remove(value);
  }

  void removeAtIndexFromRoles(int index) {
    roles.removeAt(index);
  }

  void updateRolesAtIndex(
    int index,
    RolesStruct Function(RolesStruct) updateFn,
  ) {
    roles[index] = updateFn(_roles[index]);
  }

  void insertAtIndexInRoles(int index, RolesStruct value) {
    roles.insert(index, value);
  }

  int _authenticatedRole = 0;
  int get authenticatedRole => _authenticatedRole;
  set authenticatedRole(int value) {
    _authenticatedRole = value;
    secureStorage.setInt('ff_authenticatedRole', value);
  }

  void deleteAuthenticatedRole() {
    secureStorage.delete(key: 'ff_authenticatedRole');
  }

  List<String> _toolsBoxType = ['Eléctrica', 'Mecánica', 'Varias', 'Otro'];
  List<String> get toolsBoxType => _toolsBoxType;
  set toolsBoxType(List<String> value) {
    _toolsBoxType = value;
  }

  void addToToolsBoxType(String value) {
    toolsBoxType.add(value);
  }

  void removeFromToolsBoxType(String value) {
    toolsBoxType.remove(value);
  }

  void removeAtIndexFromToolsBoxType(int index) {
    toolsBoxType.removeAt(index);
  }

  void updateToolsBoxTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    toolsBoxType[index] = updateFn(_toolsBoxType[index]);
  }

  void insertAtIndexInToolsBoxType(int index, String value) {
    toolsBoxType.insert(index, value);
  }

  List<String> _criticalTasks = [
    'Transporte de personal y equipos',
    'Trabajo en excavaciones (personal trabajando dentro de una excavación)',
    'Trabajo en espacios confinados',
    'Izaje de cargas',
    'Trabajo en fundidas',
    'Descargue y cargue manual de carga',
    'Desplazamiento del personal por áreas con cobertura vegetal',
    'Trabajo en tala de árboles',
    'Trabajo con redes eléctricas energizadas',
    'Trabajo en alturas',
    'Operación de maquinaria pesada',
    'Prueba de transformadores',
    'Soldadura',
    'No se usa en una tarea crítica'
  ];
  List<String> get criticalTasks => _criticalTasks;
  set criticalTasks(List<String> value) {
    _criticalTasks = value;
  }

  void addToCriticalTasks(String value) {
    criticalTasks.add(value);
  }

  void removeFromCriticalTasks(String value) {
    criticalTasks.remove(value);
  }

  void removeAtIndexFromCriticalTasks(int index) {
    criticalTasks.removeAt(index);
  }

  void updateCriticalTasksAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    criticalTasks[index] = updateFn(_criticalTasks[index]);
  }

  void insertAtIndexInCriticalTasks(int index, String value) {
    criticalTasks.insert(index, value);
  }

  List<String> _moCategories = [
    'Infraestructura',
    'Herramientas',
    'Equipos y Máquinas',
    'Instrumentos de Medición'
  ];
  List<String> get moCategories => _moCategories;
  set moCategories(List<String> value) {
    _moCategories = value;
    secureStorage.setStringList('ff_moCategories', value);
  }

  void deleteMoCategories() {
    secureStorage.delete(key: 'ff_moCategories');
  }

  void addToMoCategories(String value) {
    moCategories.add(value);
    secureStorage.setStringList('ff_moCategories', _moCategories);
  }

  void removeFromMoCategories(String value) {
    moCategories.remove(value);
    secureStorage.setStringList('ff_moCategories', _moCategories);
  }

  void removeAtIndexFromMoCategories(int index) {
    moCategories.removeAt(index);
    secureStorage.setStringList('ff_moCategories', _moCategories);
  }

  void updateMoCategoriesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    moCategories[index] = updateFn(_moCategories[index]);
    secureStorage.setStringList('ff_moCategories', _moCategories);
  }

  void insertAtIndexInMoCategories(int index, String value) {
    moCategories.insert(index, value);
    secureStorage.setStringList('ff_moCategories', _moCategories);
  }

  List<dynamic> _anyMoFormMetadata = [];
  List<dynamic> get anyMoFormMetadata => _anyMoFormMetadata;
  set anyMoFormMetadata(List<dynamic> value) {
    _anyMoFormMetadata = value;
  }

  void addToAnyMoFormMetadata(dynamic value) {
    anyMoFormMetadata.add(value);
  }

  void removeFromAnyMoFormMetadata(dynamic value) {
    anyMoFormMetadata.remove(value);
  }

  void removeAtIndexFromAnyMoFormMetadata(int index) {
    anyMoFormMetadata.removeAt(index);
  }

  void updateAnyMoFormMetadataAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    anyMoFormMetadata[index] = updateFn(_anyMoFormMetadata[index]);
  }

  void insertAtIndexInAnyMoFormMetadata(int index, dynamic value) {
    anyMoFormMetadata.insert(index, value);
  }

  int _propertyAdmin = 0;
  int get propertyAdmin => _propertyAdmin;
  set propertyAdmin(int value) {
    _propertyAdmin = value;
  }

  String _propertyAdminType = '';
  String get propertyAdminType => _propertyAdminType;
  set propertyAdminType(String value) {
    _propertyAdminType = value;
  }

  String _selectedMoForScheduledMtto = '';
  String get selectedMoForScheduledMtto => _selectedMoForScheduledMtto;
  set selectedMoForScheduledMtto(String value) {
    _selectedMoForScheduledMtto = value;
  }

  int _index = 0;
  int get index => _index;
  set index(int value) {
    _index = value;
  }

  List<String> _maintenanceTypes = ['Preventivo', 'Correctivo', 'Predictivo'];
  List<String> get maintenanceTypes => _maintenanceTypes;
  set maintenanceTypes(List<String> value) {
    _maintenanceTypes = value;
  }

  void addToMaintenanceTypes(String value) {
    maintenanceTypes.add(value);
  }

  void removeFromMaintenanceTypes(String value) {
    maintenanceTypes.remove(value);
  }

  void removeAtIndexFromMaintenanceTypes(int index) {
    maintenanceTypes.removeAt(index);
  }

  void updateMaintenanceTypesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    maintenanceTypes[index] = updateFn(_maintenanceTypes[index]);
  }

  void insertAtIndexInMaintenanceTypes(int index, String value) {
    maintenanceTypes.insert(index, value);
  }

  List<String> _mttFrecuency = [
    'Semanal',
    'Mensual',
    'Bimensual',
    'Trimestral',
    'Cuatrimestral',
    'Semestral',
    'Anual',
    'Bianual',
    'Trianual',
    'Min',
    'Única'
  ];
  List<String> get mttFrecuency => _mttFrecuency;
  set mttFrecuency(List<String> value) {
    _mttFrecuency = value;
  }

  void addToMttFrecuency(String value) {
    mttFrecuency.add(value);
  }

  void removeFromMttFrecuency(String value) {
    mttFrecuency.remove(value);
  }

  void removeAtIndexFromMttFrecuency(int index) {
    mttFrecuency.removeAt(index);
  }

  void updateMttFrecuencyAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mttFrecuency[index] = updateFn(_mttFrecuency[index]);
  }

  void insertAtIndexInMttFrecuency(int index, String value) {
    mttFrecuency.insert(index, value);
  }

  List<String> _objectFinalStatus = [
    'Operativo',
    'En Mantenimiento',
    'Pendientes, falla corregida',
    'Falla',
    'Se da de baja del inventario',
    'Trasladado',
    'Perdida',
    'Devolución'
  ];
  List<String> get objectFinalStatus => _objectFinalStatus;
  set objectFinalStatus(List<String> value) {
    _objectFinalStatus = value;
  }

  void addToObjectFinalStatus(String value) {
    objectFinalStatus.add(value);
  }

  void removeFromObjectFinalStatus(String value) {
    objectFinalStatus.remove(value);
  }

  void removeAtIndexFromObjectFinalStatus(int index) {
    objectFinalStatus.removeAt(index);
  }

  void updateObjectFinalStatusAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    objectFinalStatus[index] = updateFn(_objectFinalStatus[index]);
  }

  void insertAtIndexInObjectFinalStatus(int index, String value) {
    objectFinalStatus.insert(index, value);
  }

  List<String> _mttoStatus = [
    'PROGRAMADO',
    'EN PROCESO',
    'EJECUTADO',
    'PARCIALMENTE EJECUTADO'
  ];
  List<String> get mttoStatus => _mttoStatus;
  set mttoStatus(List<String> value) {
    _mttoStatus = value;
  }

  void addToMttoStatus(String value) {
    mttoStatus.add(value);
  }

  void removeFromMttoStatus(String value) {
    mttoStatus.remove(value);
  }

  void removeAtIndexFromMttoStatus(int index) {
    mttoStatus.removeAt(index);
  }

  void updateMttoStatusAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mttoStatus[index] = updateFn(_mttoStatus[index]);
  }

  void insertAtIndexInMttoStatus(int index, String value) {
    mttoStatus.insert(index, value);
  }

  List<String> _controlTypeToImplement = [];
  List<String> get controlTypeToImplement => _controlTypeToImplement;
  set controlTypeToImplement(List<String> value) {
    _controlTypeToImplement = value;
  }

  void addToControlTypeToImplement(String value) {
    controlTypeToImplement.add(value);
  }

  void removeFromControlTypeToImplement(String value) {
    controlTypeToImplement.remove(value);
  }

  void removeAtIndexFromControlTypeToImplement(int index) {
    controlTypeToImplement.removeAt(index);
  }

  void updateControlTypeToImplementAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    controlTypeToImplement[index] = updateFn(_controlTypeToImplement[index]);
  }

  void insertAtIndexInControlTypeToImplement(int index, String value) {
    controlTypeToImplement.insert(index, value);
  }

  List<ActivitiesStruct> _activitiesList = [];
  List<ActivitiesStruct> get activitiesList => _activitiesList;
  set activitiesList(List<ActivitiesStruct> value) {
    _activitiesList = value;
  }

  void addToActivitiesList(ActivitiesStruct value) {
    activitiesList.add(value);
  }

  void removeFromActivitiesList(ActivitiesStruct value) {
    activitiesList.remove(value);
  }

  void removeAtIndexFromActivitiesList(int index) {
    activitiesList.removeAt(index);
  }

  void updateActivitiesListAtIndex(
    int index,
    ActivitiesStruct Function(ActivitiesStruct) updateFn,
  ) {
    activitiesList[index] = updateFn(_activitiesList[index]);
  }

  void insertAtIndexInActivitiesList(int index, ActivitiesStruct value) {
    activitiesList.insert(index, value);
  }

  List<MaitenanceStatusStruct> _maintenaceStatus = [];
  List<MaitenanceStatusStruct> get maintenaceStatus => _maintenaceStatus;
  set maintenaceStatus(List<MaitenanceStatusStruct> value) {
    _maintenaceStatus = value;
  }

  void addToMaintenaceStatus(MaitenanceStatusStruct value) {
    maintenaceStatus.add(value);
  }

  void removeFromMaintenaceStatus(MaitenanceStatusStruct value) {
    maintenaceStatus.remove(value);
  }

  void removeAtIndexFromMaintenaceStatus(int index) {
    maintenaceStatus.removeAt(index);
  }

  void updateMaintenaceStatusAtIndex(
    int index,
    MaitenanceStatusStruct Function(MaitenanceStatusStruct) updateFn,
  ) {
    maintenaceStatus[index] = updateFn(_maintenaceStatus[index]);
  }

  void insertAtIndexInMaintenaceStatus(
      int index, MaitenanceStatusStruct value) {
    maintenaceStatus.insert(index, value);
  }

  List<String> _statusForText = ['PROGRAMADO', 'EN EJECUCIÓN', 'COMPLETADO'];
  List<String> get statusForText => _statusForText;
  set statusForText(List<String> value) {
    _statusForText = value;
  }

  void addToStatusForText(String value) {
    statusForText.add(value);
  }

  void removeFromStatusForText(String value) {
    statusForText.remove(value);
  }

  void removeAtIndexFromStatusForText(int index) {
    statusForText.removeAt(index);
  }

  void updateStatusForTextAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    statusForText[index] = updateFn(_statusForText[index]);
  }

  void insertAtIndexInStatusForText(int index, String value) {
    statusForText.insert(index, value);
  }

  List<dynamic> _testingActivities = [];
  List<dynamic> get testingActivities => _testingActivities;
  set testingActivities(List<dynamic> value) {
    _testingActivities = value;
  }

  void addToTestingActivities(dynamic value) {
    testingActivities.add(value);
  }

  void removeFromTestingActivities(dynamic value) {
    testingActivities.remove(value);
  }

  void removeAtIndexFromTestingActivities(int index) {
    testingActivities.removeAt(index);
  }

  void updateTestingActivitiesAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    testingActivities[index] = updateFn(_testingActivities[index]);
  }

  void insertAtIndexInTestingActivities(int index, dynamic value) {
    testingActivities.insert(index, value);
  }

  bool _showObsInput = false;
  bool get showObsInput => _showObsInput;
  set showObsInput(bool value) {
    _showObsInput = value;
  }

  String _currentProject = '';
  String get currentProject => _currentProject;
  set currentProject(String value) {
    _currentProject = value;
    secureStorage.setString('ff_currentProject', value);
  }

  void deleteCurrentProject() {
    secureStorage.delete(key: 'ff_currentProject');
  }

  String _authenticatedUserName = '';
  String get authenticatedUserName => _authenticatedUserName;
  set authenticatedUserName(String value) {
    _authenticatedUserName = value;
    secureStorage.setString('ff_authenticatedUserName', value);
  }

  void deleteAuthenticatedUserName() {
    secureStorage.delete(key: 'ff_authenticatedUserName');
  }

  /// This apps holds a list of all the current maintenance objects for use when
  /// offline.
  List<MaintenanceObjectStruct> _inventoryList = [];
  List<MaintenanceObjectStruct> get inventoryList => _inventoryList;
  set inventoryList(List<MaintenanceObjectStruct> value) {
    _inventoryList = value;
    secureStorage.setStringList(
        'ff_inventoryList', value.map((x) => x.serialize()).toList());
  }

  void deleteInventoryList() {
    secureStorage.delete(key: 'ff_inventoryList');
  }

  void addToInventoryList(MaintenanceObjectStruct value) {
    inventoryList.add(value);
    secureStorage.setStringList(
        'ff_inventoryList', _inventoryList.map((x) => x.serialize()).toList());
  }

  void removeFromInventoryList(MaintenanceObjectStruct value) {
    inventoryList.remove(value);
    secureStorage.setStringList(
        'ff_inventoryList', _inventoryList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromInventoryList(int index) {
    inventoryList.removeAt(index);
    secureStorage.setStringList(
        'ff_inventoryList', _inventoryList.map((x) => x.serialize()).toList());
  }

  void updateInventoryListAtIndex(
    int index,
    MaintenanceObjectStruct Function(MaintenanceObjectStruct) updateFn,
  ) {
    inventoryList[index] = updateFn(_inventoryList[index]);
    secureStorage.setStringList(
        'ff_inventoryList', _inventoryList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInInventoryList(int index, MaintenanceObjectStruct value) {
    inventoryList.insert(index, value);
    secureStorage.setStringList(
        'ff_inventoryList', _inventoryList.map((x) => x.serialize()).toList());
  }

  bool _isConnected = false;
  bool get isConnected => _isConnected;
  set isConnected(bool value) {
    _isConnected = value;
  }

  bool _Internet = true;
  bool get Internet => _Internet;
  set Internet(bool value) {
    _Internet = value;
  }

  List<MaintenanceStruct> _userMaintenances = [];
  List<MaintenanceStruct> get userMaintenances => _userMaintenances;
  set userMaintenances(List<MaintenanceStruct> value) {
    _userMaintenances = value;
    secureStorage.setStringList(
        'ff_userMaintenances', value.map((x) => x.serialize()).toList());
  }

  void deleteUserMaintenances() {
    secureStorage.delete(key: 'ff_userMaintenances');
  }

  void addToUserMaintenances(MaintenanceStruct value) {
    userMaintenances.add(value);
    secureStorage.setStringList('ff_userMaintenances',
        _userMaintenances.map((x) => x.serialize()).toList());
  }

  void removeFromUserMaintenances(MaintenanceStruct value) {
    userMaintenances.remove(value);
    secureStorage.setStringList('ff_userMaintenances',
        _userMaintenances.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUserMaintenances(int index) {
    userMaintenances.removeAt(index);
    secureStorage.setStringList('ff_userMaintenances',
        _userMaintenances.map((x) => x.serialize()).toList());
  }

  void updateUserMaintenancesAtIndex(
    int index,
    MaintenanceStruct Function(MaintenanceStruct) updateFn,
  ) {
    userMaintenances[index] = updateFn(_userMaintenances[index]);
    secureStorage.setStringList('ff_userMaintenances',
        _userMaintenances.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUserMaintenances(int index, MaintenanceStruct value) {
    userMaintenances.insert(index, value);
    secureStorage.setStringList('ff_userMaintenances',
        _userMaintenances.map((x) => x.serialize()).toList());
  }

  MaintenanceStruct _createMaintenance = MaintenanceStruct();
  MaintenanceStruct get createMaintenance => _createMaintenance;
  set createMaintenance(MaintenanceStruct value) {
    _createMaintenance = value;
    secureStorage.setString('ff_createMaintenance', value.serialize());
  }

  void deleteCreateMaintenance() {
    secureStorage.delete(key: 'ff_createMaintenance');
  }

  void updateCreateMaintenanceStruct(Function(MaintenanceStruct) updateFn) {
    updateFn(_createMaintenance);
    secureStorage.setString(
        'ff_createMaintenance', _createMaintenance.serialize());
  }

  List<ProjectUsersStruct> _userList = [];
  List<ProjectUsersStruct> get userList => _userList;
  set userList(List<ProjectUsersStruct> value) {
    _userList = value;
    secureStorage.setStringList(
        'ff_userList', value.map((x) => x.serialize()).toList());
  }

  void deleteUserList() {
    secureStorage.delete(key: 'ff_userList');
  }

  void addToUserList(ProjectUsersStruct value) {
    userList.add(value);
    secureStorage.setStringList(
        'ff_userList', _userList.map((x) => x.serialize()).toList());
  }

  void removeFromUserList(ProjectUsersStruct value) {
    userList.remove(value);
    secureStorage.setStringList(
        'ff_userList', _userList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUserList(int index) {
    userList.removeAt(index);
    secureStorage.setStringList(
        'ff_userList', _userList.map((x) => x.serialize()).toList());
  }

  void updateUserListAtIndex(
    int index,
    ProjectUsersStruct Function(ProjectUsersStruct) updateFn,
  ) {
    userList[index] = updateFn(_userList[index]);
    secureStorage.setStringList(
        'ff_userList', _userList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUserList(int index, ProjectUsersStruct value) {
    userList.insert(index, value);
    secureStorage.setStringList(
        'ff_userList', _userList.map((x) => x.serialize()).toList());
  }

  MaintenanceStruct _updateMaintenance = MaintenanceStruct();
  MaintenanceStruct get updateMaintenance => _updateMaintenance;
  set updateMaintenance(MaintenanceStruct value) {
    _updateMaintenance = value;
  }

  void updateUpdateMaintenanceStruct(Function(MaintenanceStruct) updateFn) {
    updateFn(_updateMaintenance);
  }

  List<OdemDispoCriteriaStruct> _dispCriteria = [
    OdemDispoCriteriaStruct.fromSerializableMap(jsonDecode(
        '{\"Category\":\"INFRA\",\"CriteriosReposicinParcial\":\"No aplica\",\"CriteriosReposicinTotalBajaInventario\":\"Si existen daños o deterioro estructural que afecta la seguridad de la operación y/o el cumplimiento legal, se debe realizar cambio del lugar.\\nFinalización de la operación en el lugar por finalización de actividades o por daño estructural o incapacidad de soportar los servicios que requiere la operación.\",\"CriteriosDisposicionFinal\":\"No aplica.\"}')),
    OdemDispoCriteriaStruct.fromSerializableMap(jsonDecode(
        '{\"Category\":\"HERRAMIENTAS\",\"CriteriosReposicinParcial\":\"Cambio de partes o componentes que se puedan des-ensamblar y ensamblar dañados por repuestos que cumplen especificación del fabricante (ejemplo mandril, motor, otros) realizado por técnico competente.  Si la herramienta es monolítica o su estructura es un solo componente no aplica reposición parcial.\",\"CriteriosReposicinTotalBajaInventario\":\"Unidad motora, controles o mango con falla o daño permanente.  Falla o mal funcionamiento de la herramienta, la cual debe ser reportada para mantenimiento correctivo (solo si es viable en términos técnicos y de seguridad).  Falla o inestabilidad de componente que no se puede corregir.\\nFatiga y/o rotura o falla  del material del chasis, estructura o carcasa; ausencia de repuestos; falla no reparable; falla constante no reparada; falla permanente en controles o sistema de alimentación de energía (eléctrica, neumática o hidráulida)\",\"CriteriosDisposicionFinal\":\"De acuerdo con el procedimiento de manejo integral de residuos de la empresa, una vez finaliza la vida útil de la herramienta se considera residuo sólido peligroso, el cual es MARCADO como “NO USAR, para disposición final”, acopiado por el personal Ambiental de la instalación o proyecto y se disponen según el procedimiento. Se registra la disposición final en el momento de entrega a proveedor de disposición final certificado.\\nEl proveedor realiza el desmantelamiento de la herramienta, aplicando la legislación vigente, el cual clasificará los residuos y drenará los fluidos de forma técnica ambientalmente para realizar la correcta disposición final.\\nPara evitar contaminación no se pude tirar o bandonar la herramienta que es dada de baja del inventario.\"}')),
    OdemDispoCriteriaStruct.fromSerializableMap(jsonDecode(
        '{\"Category\":\"EQUIPOS_MAQUINAS\",\"CriteriosReposicinParcial\":\"Aplica solo para los consumibles de los equipos o máquinas, según nivel de desgaste.\",\"CriteriosReposicinTotalBajaInventario\":\"La reposición del equipo o máquina se realizará porque la necesidad operativa se mantiene en el tiempo; de lo contrario solo se dara de baja del inventario.  Existencia de falla(s) que no se pueden corregir en mantenimiento, fatiga del material de estructura, porta herramientas, controles o componentes críticos; daño permanente en unidad de control / medición; falla de funcionamiento permanente en los órganos funcionales.\\nFallas no reparables, falla constante no reparada, fallo irreparable del sistema eléctrico, mecánico, neumático o de control.\",\"CriteriosDisposicionFinal\":\"Se realiza el desmantelamiento de la máquina o el equipo, aplicando la legislación vigente, por parte de empresa especialista, la cual clasificará los residuos y drenará los lubricantes y fluidos de forma técnica ambientalmente para realizar la correcta disposición final.\\nPara evitar contaminación no se pude tirar o abandonar la máquina que es dada de baja del inventario.\"}')),
    OdemDispoCriteriaStruct.fromSerializableMap(jsonDecode(
        '{\"Category\":\"INSTRUMENTOS\",\"CriteriosReposicinParcial\":\"Cambio de partes o componentes que se puedan des-ensamblar y ensamblar dañados por repuestos que cumplen especificación del fabricante realizado por técnico competente.  Si el instrumento de medición es de un solo cuerpo no aplica reposición parcial.\",\"CriteriosReposicinTotalBajaInventario\":\"Falla, mal funcionamiento, error de medición o daño permanente o constante; pérdida de resolución o precisión.  Fatiga y/o rotura o falla; falla no reparable que afecta la medición; falla constante en la medición o calibración no reparada.  Componentes con alto deterioro, falta de repuestos, no compatibilidad con nuevas tecnologías implementadas en la operación.  Riesgo de afectación a la seguridd de los trabajadores o de los procesos.\",\"CriteriosDisposicionFinal\":\"De acuerdo con el procedimiento de manejo integral de residuos de la empresa, una vez finaliza la vida útil del instrumento de medición se considera residuo sólido peligroso, el cual es MARCADO como “NO USAR, para disposición final”, acopiado por el personal Ambiental de la instalación o proyecto y se disponen según el procedimiento. Se registra la disposición final en el momento de entrega a proveedor de disposición final certificado.\\nEl proveedor realiza el desmantelamiento instrumento de medición, aplicando la legislación vigente, el cual clasificará los residuos para realizar la correcta disposición final.\\nPara evitar contaminación no se pude tirar o bandonar el instrumento de medición que es dado de baja del inventario.\"}'))
  ];
  List<OdemDispoCriteriaStruct> get dispCriteria => _dispCriteria;
  set dispCriteria(List<OdemDispoCriteriaStruct> value) {
    _dispCriteria = value;
    secureStorage.setStringList(
        'ff_dispCriteria', value.map((x) => x.serialize()).toList());
  }

  void deleteDispCriteria() {
    secureStorage.delete(key: 'ff_dispCriteria');
  }

  void addToDispCriteria(OdemDispoCriteriaStruct value) {
    dispCriteria.add(value);
    secureStorage.setStringList(
        'ff_dispCriteria', _dispCriteria.map((x) => x.serialize()).toList());
  }

  void removeFromDispCriteria(OdemDispoCriteriaStruct value) {
    dispCriteria.remove(value);
    secureStorage.setStringList(
        'ff_dispCriteria', _dispCriteria.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDispCriteria(int index) {
    dispCriteria.removeAt(index);
    secureStorage.setStringList(
        'ff_dispCriteria', _dispCriteria.map((x) => x.serialize()).toList());
  }

  void updateDispCriteriaAtIndex(
    int index,
    OdemDispoCriteriaStruct Function(OdemDispoCriteriaStruct) updateFn,
  ) {
    dispCriteria[index] = updateFn(_dispCriteria[index]);
    secureStorage.setStringList(
        'ff_dispCriteria', _dispCriteria.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDispCriteria(int index, OdemDispoCriteriaStruct value) {
    dispCriteria.insert(index, value);
    secureStorage.setStringList(
        'ff_dispCriteria', _dispCriteria.map((x) => x.serialize()).toList());
  }

  dynamic _testMantenimientos;
  dynamic get testMantenimientos => _testMantenimientos;
  set testMantenimientos(dynamic value) {
    _testMantenimientos = value;
    secureStorage.setString('ff_testMantenimientos', jsonEncode(value));
  }

  void deleteTestMantenimientos() {
    secureStorage.delete(key: 'ff_testMantenimientos');
  }

  bool _isIndividualTool = true;
  bool get isIndividualTool => _isIndividualTool;
  set isIndividualTool(bool value) {
    _isIndividualTool = value;
  }

  String _SUPABASESTORAGEURL =
      'https://rzmrtifzceygkbfafemb.supabase.co/storage/v1/object/';
  String get SUPABASESTORAGEURL => _SUPABASESTORAGEURL;
  set SUPABASESTORAGEURL(String value) {
    _SUPABASESTORAGEURL = value;
    secureStorage.setString('ff_SUPABASESTORAGEURL', value);
  }

  void deleteSUPABASESTORAGEURL() {
    secureStorage.delete(key: 'ff_SUPABASESTORAGEURL');
  }

  final _cachedMttObjectDetailManager =
      FutureRequestManager<List<MaintenanceObjectsRow>>();
  Future<List<MaintenanceObjectsRow>> cachedMttObjectDetail({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenanceObjectsRow>> Function() requestFn,
  }) =>
      _cachedMttObjectDetailManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachedMttObjectDetailCache() =>
      _cachedMttObjectDetailManager.clear();
  void clearCachedMttObjectDetailCacheKey(String? uniqueKey) =>
      _cachedMttObjectDetailManager.clearRequest(uniqueKey);

  final _loggedInUserQueryManager = FutureRequestManager<List<UsersRow>>();
  Future<List<UsersRow>> loggedInUserQuery({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<UsersRow>> Function() requestFn,
  }) =>
      _loggedInUserQueryManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearLoggedInUserQueryCache() => _loggedInUserQueryManager.clear();
  void clearLoggedInUserQueryCacheKey(String? uniqueKey) =>
      _loggedInUserQueryManager.clearRequest(uniqueKey);

  final _cachedMaintenanceUpdateManager =
      FutureRequestManager<List<MaintenanceObjectsRow>>();
  Future<List<MaintenanceObjectsRow>> cachedMaintenanceUpdate({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenanceObjectsRow>> Function() requestFn,
  }) =>
      _cachedMaintenanceUpdateManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachedMaintenanceUpdateCache() =>
      _cachedMaintenanceUpdateManager.clear();
  void clearCachedMaintenanceUpdateCacheKey(String? uniqueKey) =>
      _cachedMaintenanceUpdateManager.clearRequest(uniqueKey);

  final _cacheProjectNameManager = FutureRequestManager<List<ProjectsRow>>();
  Future<List<ProjectsRow>> cacheProjectName({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProjectsRow>> Function() requestFn,
  }) =>
      _cacheProjectNameManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCacheProjectNameCache() => _cacheProjectNameManager.clear();
  void clearCacheProjectNameCacheKey(String? uniqueKey) =>
      _cacheProjectNameManager.clearRequest(uniqueKey);

  final _cachedNewMaintenancesManager =
      FutureRequestManager<List<MaintenancesRow>>();
  Future<List<MaintenancesRow>> cachedNewMaintenances({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<MaintenancesRow>> Function() requestFn,
  }) =>
      _cachedNewMaintenancesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachedNewMaintenancesCache() =>
      _cachedNewMaintenancesManager.clear();
  void clearCachedNewMaintenancesCacheKey(String? uniqueKey) =>
      _cachedNewMaintenancesManager.clearRequest(uniqueKey);

  final _cachedAllProjectsManager = FutureRequestManager<List<ProjectsRow>>();
  Future<List<ProjectsRow>> cachedAllProjects({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<ProjectsRow>> Function() requestFn,
  }) =>
      _cachedAllProjectsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCachedAllProjectsCache() => _cachedAllProjectsManager.clear();
  void clearCachedAllProjectsCacheKey(String? uniqueKey) =>
      _cachedAllProjectsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
