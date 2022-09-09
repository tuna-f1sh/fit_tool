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
import 'common_fields.dart';

// ignore_for_file: constant_identifier_names

class SegmentFileMessage extends DataMessage {
  SegmentFileMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: SegmentFileMessage.NAME,
            globalId: SegmentFileMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              MessageIndexField(
                  size: definitionMessage
                          ?.getFieldDefinition(MessageIndexField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileFileUuidField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentFileFileUuidField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileEnabledField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentFileEnabledField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileUserProfilePrimaryKeyField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentFileUserProfilePrimaryKeyField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileLeaderTypeField(
                  size: definitionMessage
                          ?.getFieldDefinition(SegmentFileLeaderTypeField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileLeaderGroupPrimaryKeyField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentFileLeaderGroupPrimaryKeyField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileLeaderActivityIdField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentFileLeaderActivityIdField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileLeaderActivityIdStringField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentFileLeaderActivityIdStringField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              SegmentFileDefaultRaceLeaderField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              SegmentFileDefaultRaceLeaderField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 151;
  static const NAME = 'segment_file';

  final bool growable;

  /// Returns an instance of SegmentFileMessage from a bytes list.
  static SegmentFileMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = SegmentFileMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the messageIndex field. Returns null if the field is not defined in the message.
  int? get messageIndex {
    final field = getField(MessageIndexField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the messageIndex field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set messageIndex(int? value) {
    final field = getField(MessageIndexField.ID);

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

  /// Returns the value of the fileUuid field. Returns null if the field is not defined in the message.
  String? get fileUuid {
    final field = getField(SegmentFileFileUuidField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the fileUuid field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set fileUuid(String? value) {
    final field = getField(SegmentFileFileUuidField.ID);

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

  /// Returns the value of the enabled field. Returns null if the field is not defined in the message.
  bool? get enabled {
    final field = getField(SegmentFileEnabledField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the enabled field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set enabled(bool? value) {
    final field = getField(SegmentFileEnabledField.ID);

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

  /// Returns the value of the userProfilePrimaryKey field. Returns null if the field is not defined in the message.
  int? get userProfilePrimaryKey {
    final field = getField(SegmentFileUserProfilePrimaryKeyField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the userProfilePrimaryKey field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set userProfilePrimaryKey(int? value) {
    final field = getField(SegmentFileUserProfilePrimaryKeyField.ID);

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

  /// Returns the value of the leaderType field. Returns null if the field is not defined in the message.
  SegmentLeaderboardType? get leaderType {
    final field = getField(SegmentFileLeaderTypeField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      final value = field.getValue(subField: subField);
      if (value == null) {
        return null;
      }
      return SegmentLeaderboardTypeExt.fromValue(value);
    } else {
      return null;
    }
  }

  /// Sets the leaderType field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set leaderType(SegmentLeaderboardType? value) {
    final field = getField(SegmentFileLeaderTypeField.ID);

    if (field != null) {
      if (value == null) {
        field.clear();
      } else {
        var subField = field.getValidSubField(fields);
        field.setValue(0, value.value, subField);
      }
    } else {
      throw FieldNotDefinedError(field!.name);
    }
  }

  /// Returns the value of the leaderGroupPrimaryKey field. Returns null if the field is not defined in the message.
  int? get leaderGroupPrimaryKey {
    final field = getField(SegmentFileLeaderGroupPrimaryKeyField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the leaderGroupPrimaryKey field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set leaderGroupPrimaryKey(int? value) {
    final field = getField(SegmentFileLeaderGroupPrimaryKeyField.ID);

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

  /// Returns the value of the leaderActivityId field. Returns null if the field is not defined in the message.
  int? get leaderActivityId {
    final field = getField(SegmentFileLeaderActivityIdField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the leaderActivityId field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set leaderActivityId(int? value) {
    final field = getField(SegmentFileLeaderActivityIdField.ID);

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

  /// Returns the value of the leaderActivityIdString field. Returns null if the field is not defined in the message.
  String? get leaderActivityIdString {
    final field = getField(SegmentFileLeaderActivityIdStringField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the leaderActivityIdString field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set leaderActivityIdString(String? value) {
    final field = getField(SegmentFileLeaderActivityIdStringField.ID);

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

  /// Returns the value of the defaultRaceLeader field. Returns null if the field is not defined in the message.
  int? get defaultRaceLeader {
    final field = getField(SegmentFileDefaultRaceLeaderField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the defaultRaceLeader field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set defaultRaceLeader(int? value) {
    final field = getField(SegmentFileDefaultRaceLeaderField.ID);

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

class SegmentFileFileUuidField extends Field {
  SegmentFileFileUuidField({int size = 0, bool growable = true})
      : super(
            name: 'file_uuid',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class SegmentFileEnabledField extends Field {
  SegmentFileEnabledField({int size = 0, bool growable = true})
      : super(
            name: 'enabled',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 3;
}

class SegmentFileUserProfilePrimaryKeyField extends Field {
  SegmentFileUserProfilePrimaryKeyField({int size = 0, bool growable = true})
      : super(
            name: 'user_profile_primary_key',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class SegmentFileLeaderTypeField extends Field {
  SegmentFileLeaderTypeField({int size = 0, bool growable = true})
      : super(
            name: 'leader_type',
            id: ID,
            type: BaseType.ENUM,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 7;
}

class SegmentFileLeaderGroupPrimaryKeyField extends Field {
  SegmentFileLeaderGroupPrimaryKeyField({int size = 0, bool growable = true})
      : super(
            name: 'leader_group_primary_key',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 8;
}

class SegmentFileLeaderActivityIdField extends Field {
  SegmentFileLeaderActivityIdField({int size = 0, bool growable = true})
      : super(
            name: 'leader_activity_id',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 9;
}

class SegmentFileLeaderActivityIdStringField extends Field {
  SegmentFileLeaderActivityIdStringField({int size = 0, bool growable = true})
      : super(
            name: 'leader_activity_id_string',
            id: ID,
            type: BaseType.STRING,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 10;
}

class SegmentFileDefaultRaceLeaderField extends Field {
  SegmentFileDefaultRaceLeaderField({int size = 0, bool growable = true})
      : super(
            name: 'default_race_leader',
            id: ID,
            type: BaseType.UINT8,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 11;
}
