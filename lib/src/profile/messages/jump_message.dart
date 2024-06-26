/// Autogenerated. Do not modify.
///
/// Profile: 21.60

import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../field.dart';
import '../../sub_field.dart';
import '../profile_type.dart';
import '../../errors.dart';
import 'common_fields.dart';

// ignore_for_file: constant_identifier_names

class JumpMessage extends DataMessage {
  JumpMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: JumpMessage.NAME,
            globalId: JumpMessage.ID,
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
              JumpDistanceField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpDistanceField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpHeightField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpHeightField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpRotationsField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpRotationsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpHangTimeField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpHangTimeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpScoreField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpScoreField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpPositionLatField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpPositionLatField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpPositionLongField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpPositionLongField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpSpeedField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpSpeedField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              JumpEnhancedSpeedField(
                  size: definitionMessage
                          ?.getFieldDefinition(JumpEnhancedSpeedField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 285;
  static const NAME = 'jump';

  final bool growable;

  /// Returns an instance of JumpMessage from a bytes list.
  static JumpMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = JumpMessage(definitionMessage: definitionMessage);
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
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the distance field. Returns null if the field is not defined in the message.
  double? get distance {
    final field = getField(JumpDistanceField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the distance field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set distance(double? value) {
    final field = getField(JumpDistanceField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the height field. Returns null if the field is not defined in the message.
  double? get height {
    final field = getField(JumpHeightField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the height field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set height(double? value) {
    final field = getField(JumpHeightField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the rotations field. Returns null if the field is not defined in the message.
  int? get rotations {
    final field = getField(JumpRotationsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the rotations field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set rotations(int? value) {
    final field = getField(JumpRotationsField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the hangTime field. Returns null if the field is not defined in the message.
  double? get hangTime {
    final field = getField(JumpHangTimeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the hangTime field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set hangTime(double? value) {
    final field = getField(JumpHangTimeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the score field. Returns null if the field is not defined in the message.
  double? get score {
    final field = getField(JumpScoreField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the score field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set score(double? value) {
    final field = getField(JumpScoreField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the positionLat field. Returns null if the field is not defined in the message.
  double? get positionLat {
    final field = getField(JumpPositionLatField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLat field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLat(double? value) {
    final field = getField(JumpPositionLatField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the positionLong field. Returns null if the field is not defined in the message.
  double? get positionLong {
    final field = getField(JumpPositionLongField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the positionLong field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set positionLong(double? value) {
    final field = getField(JumpPositionLongField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the speed field. Returns null if the field is not defined in the message.
  double? get speed {
    final field = getField(JumpSpeedField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the speed field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set speed(double? value) {
    final field = getField(JumpSpeedField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the enhancedSpeed field. Returns null if the field is not defined in the message.
  double? get enhancedSpeed {
    final field = getField(JumpEnhancedSpeedField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enhancedSpeed field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enhancedSpeed(double? value) {
    final field = getField(JumpEnhancedSpeedField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }
}

class JumpDistanceField extends Field {
  JumpDistanceField({int size = 0, bool growable = true})
      : super(
            name: 'distance',
            id: ID,
            type: BaseType.FLOAT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'm',
            mainTypeName: 'float32',
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class JumpHeightField extends Field {
  JumpHeightField({int size = 0, bool growable = true})
      : super(
            name: 'height',
            id: ID,
            type: BaseType.FLOAT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'm',
            mainTypeName: 'float32',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class JumpRotationsField extends Field {
  JumpRotationsField({int size = 0, bool growable = true})
      : super(
            name: 'rotations',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class JumpHangTimeField extends Field {
  JumpHangTimeField({int size = 0, bool growable = true})
      : super(
            name: 'hang_time',
            id: ID,
            type: BaseType.FLOAT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 's',
            mainTypeName: 'float32',
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class JumpScoreField extends Field {
  JumpScoreField({int size = 0, bool growable = true})
      : super(
            name: 'score',
            id: ID,
            type: BaseType.FLOAT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class JumpPositionLatField extends Field {
  JumpPositionLatField({int size = 0, bool growable = true})
      : super(
            name: 'position_lat',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: 'sint32',
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class JumpPositionLongField extends Field {
  JumpPositionLongField({int size = 0, bool growable = true})
      : super(
            name: 'position_long',
            id: ID,
            type: BaseType.SINT32,
            offset: 0,
            scale: 11930464.711111112,
            size: size,
            units: 'degrees',
            mainTypeName: 'sint32',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class JumpSpeedField extends Field {
  JumpSpeedField({int size = 0, bool growable = true})
      : super(
            name: 'speed',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1000,
            size: size,
            units: 'm/s',
            mainTypeName: 'uint16',
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class JumpEnhancedSpeedField extends Field {
  JumpEnhancedSpeedField({int size = 0, bool growable = true})
      : super(
            name: 'enhanced_speed',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1000,
            size: size,
            units: 'm/s',
            mainTypeName: 'uint32',
            growable: growable,
            subFields: []);

  static const ID = 8;
}
