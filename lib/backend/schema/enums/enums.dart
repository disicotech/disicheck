<<<<<<< HEAD
=======
import 'package:collection/collection.dart';
>>>>>>> master
import 'package:ff_commons/flutter_flow/enums.dart';
export 'package:ff_commons/flutter_flow/enums.dart';

enum MttoFinalStatus {
  OPERATIVO,
  EN_MANTENIMIENTO,
  PENDIENTES_FALLA_CORREGIDA,
  FALLA,
  BAJA_INVENTARIO,
  TRASLADADO,
  PERDIDA,
  DEVOLUCION,
}

enum MttoType {
  preventivo,
  correctivo,
  predictivo,
}

enum MttoStatus {
  programado,
  en_proceso,
  ejecutado,
  parcialmente_ejecutado,
  cancelado,
}

enum Roles {
  Adninistrador,
  Coordinador,
  ResponsableMtto,
  Invitado,
}

enum CurrentMoState {
  Operativo,
  Eliminado,
  Trasladado,
  Devuelto,
  Perdida,
}

enum LayoutView {
  GRID,
  LIST,
}

enum Index {
  VIEW_ALL,
}

enum NavbarNavigation {
  HOME_PAGE,
  MAINTENANCE_PAGE,
  INVENTORY_PAGE,
  PROFILE_PAGE,
  SCHEDULE_MAINTENANCE_PAGE,
  CREATING_MAINTENANCE_STATE_PAGE,
}

enum OmCategories {
  EquiposMaquinas,
  Herramientas,
  Infraestructura,
  Instrumentos,
}

enum MoCategories {
  EQUIPOS_MAQUINAS,
  HERRAMIENTAS,
  INFRA,
  INSTRUMENTOS,
}

enum MttoFrecuency {
  semanal,
  mensual,
  bimensual,
  trimestral,
  cuatrimestral,
  semestral,
  anual,
  bianual,
  trianual,
  minuto,
  unica,
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (MttoFinalStatus):
      return MttoFinalStatus.values.deserialize(value) as T?;
    case (MttoType):
      return MttoType.values.deserialize(value) as T?;
    case (MttoStatus):
      return MttoStatus.values.deserialize(value) as T?;
    case (Roles):
      return Roles.values.deserialize(value) as T?;
    case (CurrentMoState):
      return CurrentMoState.values.deserialize(value) as T?;
    case (LayoutView):
      return LayoutView.values.deserialize(value) as T?;
    case (Index):
      return Index.values.deserialize(value) as T?;
    case (NavbarNavigation):
      return NavbarNavigation.values.deserialize(value) as T?;
    case (OmCategories):
      return OmCategories.values.deserialize(value) as T?;
    case (MoCategories):
      return MoCategories.values.deserialize(value) as T?;
    case (MttoFrecuency):
      return MttoFrecuency.values.deserialize(value) as T?;
    default:
      return null;
  }
}
