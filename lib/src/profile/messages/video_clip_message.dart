/// Autogenerated. Do not modify.
///
/// Profile: 21.60
import 'dart:typed_data';

import '../../base_type.dart';
import '../../data_message.dart';
import '../../definition_message.dart';
import '../../errors.dart';
import '../../field.dart';

class VideoClipMessage extends DataMessage {
  VideoClipMessage(
      {definitionMessage,
      developerFields,
      int localId = 0,
      Endian endian = Endian.little})
      : growable = definitionMessage == null,
        super(
            name: VideoClipMessage.NAME,
            globalId: VideoClipMessage.ID,
            localId: definitionMessage?.localId ?? localId,
            endian: definitionMessage?.endian ?? endian,
            definitionMessage: definitionMessage,
            developerFields: developerFields,
            fields: [
              VideoClipClipNumberField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipClipNumberField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipStartTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipStartTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipStartTimestampMsField(
                  size: definitionMessage
                          ?.getFieldDefinition(
                              VideoClipStartTimestampMsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipEndTimestampField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipEndTimestampField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipEndTimestampMsField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipEndTimestampMsField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipClipStartField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipClipStartField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null),
              VideoClipClipEndField(
                  size: definitionMessage
                          ?.getFieldDefinition(VideoClipClipEndField.ID)
                          ?.size ??
                      0,
                  growable: definitionMessage == null)
            ]);

  /// The Global ID of the message. In the FIT documentation this is referred to as the "Global Message Number".
  static const ID = 187;
  static const NAME = 'video_clip';

  final bool growable;

  /// Returns an instance of VideoClipMessage from a bytes list.
  static VideoClipMessage fromBytes(
      DefinitionMessage definitionMessage, Uint8List bytes) {
    final message = VideoClipMessage(definitionMessage: definitionMessage);
    message.readFromBytes(bytes);
    return message;
  }

  /// Returns the value of the clipNumber field. Returns null if the field is not defined in the message.
  int? get clipNumber {
    final field = getField(VideoClipClipNumberField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the clipNumber field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set clipNumber(int? value) {
    final field = getField(VideoClipClipNumberField.ID);

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
  int? get startTimestamp {
    final field = getField(VideoClipStartTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set startTimestamp(int? value) {
    final field = getField(VideoClipStartTimestampField.ID);

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

  /// Returns the value of the startTimestampMs field. Returns null if the field is not defined in the message.
  int? get startTimestampMs {
    final field = getField(VideoClipStartTimestampMsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the startTimestampMs field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set startTimestampMs(int? value) {
    final field = getField(VideoClipStartTimestampMsField.ID);

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
  int? get endTimestamp {
    final field = getField(VideoClipEndTimestampField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the timestamp field. [value] is milliseconds since January 1st, 1970 at 00:00:00 UTC. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set endTimestamp(int? value) {
    final field = getField(VideoClipEndTimestampField.ID);

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

  /// Returns the value of the endTimestampMs field. Returns null if the field is not defined in the message.
  int? get endTimestampMs {
    final field = getField(VideoClipEndTimestampMsField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the endTimestampMs field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set endTimestampMs(int? value) {
    final field = getField(VideoClipEndTimestampMsField.ID);

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

  /// Returns the value of the clipStart field. Returns null if the field is not defined in the message.
  int? get clipStart {
    final field = getField(VideoClipClipStartField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the clipStart field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set clipStart(int? value) {
    final field = getField(VideoClipClipStartField.ID);

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

  /// Returns the value of the clipEnd field. Returns null if the field is not defined in the message.
  int? get clipEnd {
    final field = getField(VideoClipClipEndField.ID);
    if (field != null && field.isValid()) {
      var subField = field.getValidSubField(fields);
      return field.getValue(subField: subField);
    } else {
      return null;
    }
  }

  /// Sets the clipEnd field with [value]. Throws [FieldNotDefinedError] if the field is not defined in the message.
  set clipEnd(int? value) {
    final field = getField(VideoClipClipEndField.ID);

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

class VideoClipClipNumberField extends Field {
  VideoClipClipNumberField({int size = 0, bool growable = true})
      : super(
            name: 'clip_number',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 0;
}

class VideoClipStartTimestampField extends Field {
  VideoClipStartTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'start_timestamp',
            id: ID,
            type: BaseType.UINT32,
            offset: -631065600000,
            scale: 0.001,
            size: size,
            units: 'ms',
            mainTypeName: 'date_time',
            growable: growable,
            subFields: []);

  static const ID = 1;
}

class VideoClipStartTimestampMsField extends Field {
  VideoClipStartTimestampMsField({int size = 0, bool growable = true})
      : super(
            name: 'start_timestamp_ms',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 2;
}

class VideoClipEndTimestampField extends Field {
  VideoClipEndTimestampField({int size = 0, bool growable = true})
      : super(
            name: 'end_timestamp',
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

class VideoClipEndTimestampMsField extends Field {
  VideoClipEndTimestampMsField({int size = 0, bool growable = true})
      : super(
            name: 'end_timestamp_ms',
            id: ID,
            type: BaseType.UINT16,
            offset: 0,
            scale: 1,
            size: size,
            growable: growable,
            subFields: []);

  static const ID = 4;
}

class VideoClipClipStartField extends Field {
  VideoClipClipStartField({int size = 0, bool growable = true})
      : super(
            name: 'clip_start',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'ms',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 6;
}

class VideoClipClipEndField extends Field {
  VideoClipClipEndField({int size = 0, bool growable = true})
      : super(
            name: 'clip_end',
            id: ID,
            type: BaseType.UINT32,
            offset: 0,
            scale: 1,
            size: size,
            units: 'ms',
            mainTypeName: '',
            growable: growable,
            subFields: []);

  static const ID = 7;
}
