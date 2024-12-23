// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SessionStruct extends BaseStruct {
  SessionStruct({
    String? id,
    String? title,
    String? subtitle,
    String? type,
    String? description,
    String? subscribe,
    String? recomendation,
    String? trackImg,
    String? sessionImg,
    String? audioTrack,
    String? videoTrack,
    String? duration,
  })  : _id = id,
        _title = title,
        _subtitle = subtitle,
        _type = type,
        _description = description,
        _subscribe = subscribe,
        _recomendation = recomendation,
        _trackImg = trackImg,
        _sessionImg = sessionImg,
        _audioTrack = audioTrack,
        _videoTrack = videoTrack,
        _duration = duration;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "subscribe" field.
  String? _subscribe;
  String get subscribe => _subscribe ?? '';
  set subscribe(String? val) => _subscribe = val;

  bool hasSubscribe() => _subscribe != null;

  // "recomendation" field.
  String? _recomendation;
  String get recomendation => _recomendation ?? '';
  set recomendation(String? val) => _recomendation = val;

  bool hasRecomendation() => _recomendation != null;

  // "track_img" field.
  String? _trackImg;
  String get trackImg =>
      _trackImg ??
      'https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/quokka.jpg?alt=media&token=5b5cdd4a-3a57-48ab-bc72-41361656e91d';
  set trackImg(String? val) => _trackImg = val;

  bool hasTrackImg() => _trackImg != null;

  // "session_img" field.
  String? _sessionImg;
  String get sessionImg =>
      _sessionImg ??
      'https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/quokka.jpg?alt=media&token=5b5cdd4a-3a57-48ab-bc72-41361656e91d';
  set sessionImg(String? val) => _sessionImg = val;

  bool hasSessionImg() => _sessionImg != null;

  // "audio_track" field.
  String? _audioTrack;
  String get audioTrack => _audioTrack ?? '';
  set audioTrack(String? val) => _audioTrack = val;

  bool hasAudioTrack() => _audioTrack != null;

  // "video_track" field.
  String? _videoTrack;
  String get videoTrack => _videoTrack ?? '';
  set videoTrack(String? val) => _videoTrack = val;

  bool hasVideoTrack() => _videoTrack != null;

  // "duration" field.
  String? _duration;
  String get duration => _duration ?? '';
  set duration(String? val) => _duration = val;

  bool hasDuration() => _duration != null;

  static SessionStruct fromMap(Map<String, dynamic> data) => SessionStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        subtitle: data['subtitle'] as String?,
        type: data['type'] as String?,
        description: data['description'] as String?,
        subscribe: data['subscribe'] as String?,
        recomendation: data['recomendation'] as String?,
        trackImg: data['track_img'] as String?,
        sessionImg: data['session_img'] as String?,
        audioTrack: data['audio_track'] as String?,
        videoTrack: data['video_track'] as String?,
        duration: data['duration'] as String?,
      );

  static SessionStruct? maybeFromMap(dynamic data) =>
      data is Map ? SessionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'subtitle': _subtitle,
        'type': _type,
        'description': _description,
        'subscribe': _subscribe,
        'recomendation': _recomendation,
        'track_img': _trackImg,
        'session_img': _sessionImg,
        'audio_track': _audioTrack,
        'video_track': _videoTrack,
        'duration': _duration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
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
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'subscribe': serializeParam(
          _subscribe,
          ParamType.String,
        ),
        'recomendation': serializeParam(
          _recomendation,
          ParamType.String,
        ),
        'track_img': serializeParam(
          _trackImg,
          ParamType.String,
        ),
        'session_img': serializeParam(
          _sessionImg,
          ParamType.String,
        ),
        'audio_track': serializeParam(
          _audioTrack,
          ParamType.String,
        ),
        'video_track': serializeParam(
          _videoTrack,
          ParamType.String,
        ),
        'duration': serializeParam(
          _duration,
          ParamType.String,
        ),
      }.withoutNulls;

  static SessionStruct fromSerializableMap(Map<String, dynamic> data) =>
      SessionStruct(
        id: deserializeParam(
          data['id'],
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
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        subscribe: deserializeParam(
          data['subscribe'],
          ParamType.String,
          false,
        ),
        recomendation: deserializeParam(
          data['recomendation'],
          ParamType.String,
          false,
        ),
        trackImg: deserializeParam(
          data['track_img'],
          ParamType.String,
          false,
        ),
        sessionImg: deserializeParam(
          data['session_img'],
          ParamType.String,
          false,
        ),
        audioTrack: deserializeParam(
          data['audio_track'],
          ParamType.String,
          false,
        ),
        videoTrack: deserializeParam(
          data['video_track'],
          ParamType.String,
          false,
        ),
        duration: deserializeParam(
          data['duration'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SessionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SessionStruct &&
        id == other.id &&
        title == other.title &&
        subtitle == other.subtitle &&
        type == other.type &&
        description == other.description &&
        subscribe == other.subscribe &&
        recomendation == other.recomendation &&
        trackImg == other.trackImg &&
        sessionImg == other.sessionImg &&
        audioTrack == other.audioTrack &&
        videoTrack == other.videoTrack &&
        duration == other.duration;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        title,
        subtitle,
        type,
        description,
        subscribe,
        recomendation,
        trackImg,
        sessionImg,
        audioTrack,
        videoTrack,
        duration
      ]);
}

SessionStruct createSessionStruct({
  String? id,
  String? title,
  String? subtitle,
  String? type,
  String? description,
  String? subscribe,
  String? recomendation,
  String? trackImg,
  String? sessionImg,
  String? audioTrack,
  String? videoTrack,
  String? duration,
}) =>
    SessionStruct(
      id: id,
      title: title,
      subtitle: subtitle,
      type: type,
      description: description,
      subscribe: subscribe,
      recomendation: recomendation,
      trackImg: trackImg,
      sessionImg: sessionImg,
      audioTrack: audioTrack,
      videoTrack: videoTrack,
      duration: duration,
    );
