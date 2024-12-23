// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PackStruct extends BaseStruct {
  PackStruct({
    String? id,
    String? packName,
    String? title,
    String? subtitle,
    String? backgroundImg,
  })  : _id = id,
        _packName = packName,
        _title = title,
        _subtitle = subtitle,
        _backgroundImg = backgroundImg;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "pack_name" field.
  String? _packName;
  String get packName => _packName ?? '';
  set packName(String? val) => _packName = val;

  bool hasPackName() => _packName != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "subtitle" field.
  String? _subtitle;
  String get subtitle => _subtitle ?? '';
  set subtitle(String? val) => _subtitle = val;

  bool hasSubtitle() => _subtitle != null;

  // "background_img" field.
  String? _backgroundImg;
  String get backgroundImg => _backgroundImg ?? '';
  set backgroundImg(String? val) => _backgroundImg = val;

  bool hasBackgroundImg() => _backgroundImg != null;

  static PackStruct fromMap(Map<String, dynamic> data) => PackStruct(
        id: data['id'] as String?,
        packName: data['pack_name'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        backgroundImg: data['background_img'] as String?,
      );

  static PackStruct? maybeFromMap(dynamic data) =>
      data is Map ? PackStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'pack_name': _packName,
        'title': _title,
        'subtitle': _subtitle,
        'background_img': _backgroundImg,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'pack_name': serializeParam(
          _packName,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'subtitle': serializeParam(
          _subtitle,
          ParamType.String,
        ),
        'background_img': serializeParam(
          _backgroundImg,
          ParamType.String,
        ),
      }.withoutNulls;

  static PackStruct fromSerializableMap(Map<String, dynamic> data) =>
      PackStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        packName: deserializeParam(
          data['pack_name'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        subtitle: deserializeParam(
          data['subtitle'],
          ParamType.String,
          false,
        ),
        backgroundImg: deserializeParam(
          data['background_img'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PackStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PackStruct &&
        id == other.id &&
        packName == other.packName &&
        title == other.title &&
        subtitle == other.subtitle &&
        backgroundImg == other.backgroundImg;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([id, packName, title, subtitle, backgroundImg]);
}

PackStruct createPackStruct({
  String? id,
  String? packName,
  String? title,
  String? subtitle,
  String? backgroundImg,
}) =>
    PackStruct(
      id: id,
      packName: packName,
      title: title,
      subtitle: subtitle,
      backgroundImg: backgroundImg,
    );
