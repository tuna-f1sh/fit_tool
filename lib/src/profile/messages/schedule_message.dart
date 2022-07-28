/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';
import '../../sub_field.dart';
import '../profile_type.dart';

class ScheduleMessage extends DataMessage {
  ScheduleMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: ScheduleMessage.NAME,
            globalId: ScheduleMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              ScheduleManufacturerField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleManufacturerField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleProductField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleProductField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleSerialNumberField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleSerialNumberField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleTimeCreatedField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleTimeCreatedField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleCompletedField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleCompletedField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              ScheduleScheduledTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(ScheduleScheduledTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 28;
  static const NAME = 'schedule';

  final bool growable;

  /// Returns an instance of ScheduleMessage from a bytes list.
  static ScheduleMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = ScheduleMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the manufacturer field. Returns null if the field is not defined in the message.
  int? get manufacturer {
    final field = getField(ScheduleManufacturerField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the manufacturer field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set manufacturer(int? value) {
    final field = getField(ScheduleManufacturerField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the product field. Returns null if the field is not defined in the message.
  int? get product {
    final field = getField(ScheduleProductField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the product field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set product(int? value) {
    final field = getField(ScheduleProductField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Get the value of the subfield faveroProduct
  int? get faveroProduct {
    final field = getField(ScheduleProductField.ID);
    final typeField = getField(ScheduleManufacturerField.ID);

    final isSubFieldValid =
        typeField != null && [263].contains(typeField.getValue());
    if (field != null && field.isValid() && isSubFieldValid) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the product subfield with [value]. Throws [FieldNotDefinedError] if the subfield is not defined in the message.
  set faveroProduct(int? value) {
    final field = getField(ScheduleProductField.ID);
    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Get the value of the subfield garminProduct
  int? get garminProduct {
    final field = getField(ScheduleProductField.ID);
    final typeField = getField(ScheduleManufacturerField.ID);

    final isSubFieldValid =
        typeField != null && [1, 15, 13, 89].contains(typeField.getValue());
    if (field != null && field.isValid() && isSubFieldValid) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the product subfield with [value]. Throws [FieldNotDefinedError] if the subfield is not defined in the message.
  set garminProduct(int? value) {
    final field = getField(ScheduleProductField.ID);
    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the serialNumber field. Returns null if the field is not defined in the message.
  int? get serialNumber {
    final field = getField(ScheduleSerialNumberField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the serialNumber field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set serialNumber(int? value) {
    final field = getField(ScheduleSerialNumberField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the timestamp field in  milliseconds since January 1st, 1970 at 00:00:00 UTC
  int? get timeCreated {
    final field = getField(ScheduleTimeCreatedField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timeCreated(int? value) {
    final field = getField(ScheduleTimeCreatedField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the completed field. Returns null if the field is not defined in the message.
  bool? get completed {
    final field = getField(ScheduleCompletedField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the completed field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set completed(bool? value) {
    final field = getField(ScheduleCompletedField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the type field. Returns null if the field is not defined in the message.
  Schedule? get type {
    final field = getField(ScheduleTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return ScheduleExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the type field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set type(Schedule? value) {
    final field = getField(ScheduleTypeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }

  /// Returns the value of the scheduledTime field. Returns null if the field is not defined in the message.
  int? get scheduledTime {
    final field = getField(ScheduleScheduledTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the scheduledTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set scheduledTime(int? value) {
    final field = getField(ScheduleScheduledTimeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError('${field!.name}');
    }
  }
}

class ScheduleManufacturerField extends Field {
  ScheduleManufacturerField({int size = 0, bool growable = true})
      : super(
            name: 'manufacturer',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class ScheduleProductField extends Field {
  ScheduleProductField({int size = 0, bool growable = true})
      : super(
            name: 'product',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: [
              SubField(
                  name: 'favero_product',
                  type: BaseType.UINT16,
                  scale: 1,
                  offset: 0,
                  referenceMap: {
                    ScheduleManufacturerField.ID: [263]
                  }),
              SubField(
                  name: 'garmin_product',
                  type: BaseType.UINT16,
                  scale: 1,
                  offset: 0,
                  referenceMap: {
                    ScheduleManufacturerField.ID: [1, 15, 13, 89]
                  })
            ]);

  static const ID = 1;
}

class ScheduleSerialNumberField extends Field {
  ScheduleSerialNumberField({int size = 0, bool growable = true})
      : super(
            name: 'serial_number',
            id: ID,
            type: BaseType.UINT32Z,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class ScheduleTimeCreatedField extends Field {
  ScheduleTimeCreatedField({int size = 0, bool growable = true})
      : super(
            name: 'time_created',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class ScheduleCompletedField extends Field {
  ScheduleCompletedField({int size = 0, bool growable = true})
      : super(
            name: 'completed',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class ScheduleTypeField extends Field {
  ScheduleTypeField({int size = 0, bool growable = true})
      : super(
            name: 'type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class ScheduleScheduledTimeField extends Field {
  ScheduleScheduledTimeField({int size = 0, bool growable = true})
      : super(
            name: 'scheduled_time',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}
