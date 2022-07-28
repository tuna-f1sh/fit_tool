/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';
import 'common_fields.dart';

class GpsMetadataMessage extends DataMessage {
  GpsMetadataMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: GpsMetadataMessage.NAME,
            globalId: GpsMetadataMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              TimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(TimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataTimestampMsField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataTimestampMsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataPositionLatField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataPositionLatField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataPositionLongField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataPositionLongField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataEnhancedAltitudeField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              GpsMetadataEnhancedAltitudeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataEnhancedSpeedField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataEnhancedSpeedField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataHeadingField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataHeadingField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataUtcTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataUtcTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              GpsMetadataVelocityField(
                  size: definitionMessage
                          ?.getFieldDefinition(GpsMetadataVelocityField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 160;
  static const NAME = 'gps_metadata';

  final bool growable;

  /// Returns an instance of GpsMetadataMessage from a bytes list.
  static GpsMetadataMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = GpsMetadataMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the timestamp field in  milliseconds since January 1st, 1970 at 00:00:00 UTC
  int? get timestamp {
    final field = getField(TimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timestamp(int? value) {
    final field = getField(TimestampField.ID);

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

  /// Returns the value of the timestampMs field. Returns null if the field is not defined in the message.
  int? get timestampMs {
    final field = getField(GpsMetadataTimestampMsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestampMs field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set timestampMs(int? value) {
    final field = getField(GpsMetadataTimestampMsField.ID);

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

  /// Returns the value of the positionLat field. Returns null if the field is not defined in the message.
  double? get positionLat {
    final field = getField(GpsMetadataPositionLatField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLat field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLat(double? value) {
    final field = getField(GpsMetadataPositionLatField.ID);

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

  /// Returns the value of the positionLong field. Returns null if the field is not defined in the message.
  double? get positionLong {
    final field = getField(GpsMetadataPositionLongField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLong field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLong(double? value) {
    final field = getField(GpsMetadataPositionLongField.ID);

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

  /// Returns the value of the enhancedAltitude field. Returns null if the field is not defined in the message.
  double? get enhancedAltitude {
    final field = getField(GpsMetadataEnhancedAltitudeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enhancedAltitude field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enhancedAltitude(double? value) {
    final field = getField(GpsMetadataEnhancedAltitudeField.ID);

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

  /// Returns the value of the enhancedSpeed field. Returns null if the field is not defined in the message.
  double? get enhancedSpeed {
    final field = getField(GpsMetadataEnhancedSpeedField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enhancedSpeed field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enhancedSpeed(double? value) {
    final field = getField(GpsMetadataEnhancedSpeedField.ID);

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

  /// Returns the value of the heading field. Returns null if the field is not defined in the message.
  double? get heading {
    final field = getField(GpsMetadataHeadingField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the heading field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set heading(double? value) {
    final field = getField(GpsMetadataHeadingField.ID);

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
  int? get utcTimestamp {
    final field = getField(GpsMetadataUtcTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set utcTimestamp(int? value) {
    final field = getField(GpsMetadataUtcTimestampField.ID);

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

  /// Returns the value of the velocity field. Returns null if the field is not defined in the message.
  double? get velocity {
    final field = getField(GpsMetadataVelocityField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the velocity field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set velocity(double? value) {
    final field = getField(GpsMetadataVelocityField.ID);

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

class GpsMetadataTimestampMsField extends Field {
  GpsMetadataTimestampMsField({int size = 0, bool growable = true})
      : super(
            name: 'timestamp_ms',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            units: 'ms',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class GpsMetadataPositionLatField extends Field {
  GpsMetadataPositionLatField({int size = 0, bool growable = true})
      : super(
            name: 'position_lat',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class GpsMetadataPositionLongField extends Field {
  GpsMetadataPositionLongField({int size = 0, bool growable = true})
      : super(
            name: 'position_long',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class GpsMetadataEnhancedAltitudeField extends Field {
  GpsMetadataEnhancedAltitudeField({int size = 0, bool growable = true})
      : super(
            name: 'enhanced_altitude',
            id: ID,
            type: BaseType.UINT32,
            offset: 500,
            scale: 5,
            size: size,
            units: 'm',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class GpsMetadataEnhancedSpeedField extends Field {
  GpsMetadataEnhancedSpeedField({int size = 0, bool growable = true})
      : super(
            name: 'enhanced_speed',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1000,
            size: size,
            units: 'm/s',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class GpsMetadataHeadingField extends Field {
  GpsMetadataHeadingField({int size = 0, bool growable = true})
      : super(
            name: 'heading',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 100,
            size: size,
            units: 'degrees',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class GpsMetadataUtcTimestampField extends Field {
  GpsMetadataUtcTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'utc_timestamp',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class GpsMetadataVelocityField extends Field {
  GpsMetadataVelocityField({int size = 0, bool growable = true})
      : super(
            name: 'velocity',
            id: ID,
            type: BaseType.SINT16,
            offset: 0,
            scale: 100,
            size: size,
            units: 'm/s',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 7;
}
