/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';
import '../profile_type.dart';

class CourseMessage extends DataMessage {
  CourseMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: CourseMessage.NAME,
            globalId: CourseMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              CourseSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(CourseSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CourseNameField(
                  size: definitionMessage
                          ?.getFieldDefinition(CourseNameField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CourseCapabilitiesField(
                  size: definitionMessage
                          ?.getFieldDefinition(CourseCapabilitiesField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              CourseSubSportField(
                  size: definitionMessage
                          ?.getFieldDefinition(CourseSubSportField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 31;
  static const NAME = 'course';

  final bool growable;

  /// Returns an instance of CourseMessage from a bytes list.
  static CourseMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = CourseMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the sport field. Returns null if the field is not defined in the message.
  Sport? get sport {
    final field = getField(CourseSportField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SportExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the sport field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set sport(Sport? value) {
    final field = getField(CourseSportField.ID);

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

  /// Returns the value of the courseName field. Returns null if the field is not defined in the message.
  String? get courseName {
    final field = getField(CourseNameField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the courseName field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set courseName(String? value) {
    final field = getField(CourseNameField.ID);

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

  /// Returns the value of the capabilities field. Returns null if the field is not defined in the message.
  int? get capabilities {
    final field = getField(CourseCapabilitiesField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the capabilities field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set capabilities(int? value) {
    final field = getField(CourseCapabilitiesField.ID);

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

  /// Returns the value of the subSport field. Returns null if the field is not defined in the message.
  SubSport? get subSport {
    final field = getField(CourseSubSportField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SubSportExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the subSport field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set subSport(SubSport? value) {
    final field = getField(CourseSubSportField.ID);

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
}

class CourseSportField extends Field {
  CourseSportField({int size = 0, bool growable = true})
      : super(
            name: 'sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class CourseNameField extends Field {
  CourseNameField({int size = 0, bool growable = true})
      : super(
            name: 'name',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 5;
}

class CourseCapabilitiesField extends Field {
  CourseCapabilitiesField({int size = 0, bool growable = true})
      : super(
            name: 'capabilities',
            id: ID,
            type: BaseType.UINT32Z,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class CourseSubSportField extends Field {
  CourseSubSportField({int size = 0, bool growable = true})
      : super(
            name: 'sub_sport',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}
