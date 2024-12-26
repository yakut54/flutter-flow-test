import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_PackWrapper')) {
        try {
          final serializedData = prefs.getString('ff_PackWrapper') ?? '{}';
          _PackWrapper =
              PackStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _Sessions = prefs
              .getStringList('ff_Sessions')
              ?.map((x) {
                try {
                  return SessionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Sessions;
    });
    _safeInit(() {
      _isShowInfo = prefs.getBool('ff_isShowInfo') ?? _isShowInfo;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  PackStruct _PackWrapper = PackStruct.fromSerializableMap(jsonDecode(
      '{\"id\":\"1\",\"pack_name\":\"yabloko\",\"title\":\"Яблоко\",\"subtitle\":\"Сборник лучших решений\\nпо теме \\\"Омоложение\\\"\",\"background_img\":\"https://gdlsjuakwxzbcicyewvh.supabase.co/storage/v1/object/sign/pack/fon01.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJwYWNrL2ZvbjAxLmpwZyIsImlhdCI6MTczMjYwNDAwMCwiZXhwIjozMzI2ODYwNDAwMH0.gKCgD8kLQyNidjYWWoqq3beB55OedkAuylhuWWCY3Hg&t=2024-11-26T06%3A53%3A19.703Z\"}'));
  PackStruct get PackWrapper => _PackWrapper;
  set PackWrapper(PackStruct value) {
    _PackWrapper = value;
    prefs.setString('ff_PackWrapper', value.serialize());
  }

  void updatePackWrapperStruct(Function(PackStruct) updateFn) {
    updateFn(_PackWrapper);
    prefs.setString('ff_PackWrapper', _PackWrapper.serialize());
  }

  List<SessionStruct> _Sessions = [
    SessionStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"title\":\"ЯБЛОКО\",\"subtitle\":\"Ментальная процедура\",\"type\":\"audio\",\"description\":\"<p>Сеанс «Яблоко» - ментальная процедура, которую достаточно <strong>принять один раз</strong>. \\r\\nДальше установленная ментальная программа, обеспечивающая непрерывное \\r\\nобновление и защиту клеток от старения, действует самостоятельно, во время \\r\\nночного сна. Эта программа может работать и во время бодрствования, \\r\\nпо требованию. Это требование осуществляется способом вызова \\r\\nво внутреннем зрении вида яблока – того самого, которое в процессе \\r\\nсеанса показало подсознание. <br><br>\\r\\n\\r\\nВ результате сеанса проявляется не только внешнее омоложение, которое весьма \\r\\nнаглядно. С помощью сеанса обеспечивается масштабное обновление всей \\r\\nбиосистемы, <strong>и, как следствие, наглядное проявление эффекта омоложения.</strong></p>\",\"subscribe\":\"Марта Николаева-Гарина,\\r\\nгипнотерапевт\",\"recomendation\":\"\",\"track_img\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/__audio__.png?alt=media&token=64aa8f5d-0784-4f6d-9a17-a5a86fe80c15\",\"session_img\":\"https://fs.getcourse.ru/fileservice/file/download/a/176190/sc/235/h/4210ada4955c2d0f43fe4bfa0cd83986.png\",\"audio_track\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/YABLOKO.mp3?alt=media&token=0b022efc-e295-43a5-b7cc-9398d4e2ecfb\",\"video_track\":\"\",\"duration\":\"44 минуты\"}')),
    SessionStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"title\":\"ЭНЕРГЕТИЧЕСКИЙ КОКТЕЙЛЬ\",\"subtitle\":\"Видеосеанс\",\"type\":\"video\",\"description\":\"<p>Медитация среднего погружения с передачей психической энергии.\\r\\n\\tТы станешь принимать эту энергию, а та часть твоего разума,\\r\\n\\tкоторую называют подсознанием, позаботится о том, чтобы\\r\\n\\tпровести эту энергию в твое тело и там равномерно\\r\\n\\tее распределить. В результате чувствуется прилив сил.\\r\\n\\tЭта медитация особенно рекомендована при перегрузке,\\r\\n\\tсвязанной со стрессами и с большим количеством\\r\\n\\tобязательств/дел.</p>\",\"subscribe\":\"Марта Николаева-Гарина,\\r\\nгипнотерапевт\",\"recomendation\":\"Для наилучшего эффекта принимай сеанс в наушниках\",\"track_img\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/__video__.png?alt=media&token=1e56f472-53c1-42b4-b59f-ece2f4d71a27\",\"session_img\":\"https://fs.getcourse.ru/fileservice/file/download/a/176190/sc/235/h/4210ada4955c2d0f43fe4bfa0cd83986.png\",\"audio_track\":\"\",\"video_track\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/energy_cocktail.mp4?alt=media&token=8da9809e-fd81-41c7-bee2-2a03ba11c46a\",\"duration\":\"26 минут\"}')),
    SessionStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"title\":\"ПРЕДМЕТ В ТЕЛЕ\",\"subtitle\":\"Техника освобождения от неприемлемых состояний\",\"type\":\"video\",\"description\":\"<p>Обучение технике освобождения от боли, усталости, страха, раздражения и других состояний, субъективно воспринимаемых как неприемлемые/тягостные/нестерпимые. До недавнего времени «Предмет в теле» применялся в узкой области: как лечебный инструмент для облегчения состояния раковых больных в пиковой стадии заболевания. По оценкам специалистов, <strong>«Предмет в теле»</strong>, являясь эффективной альтернативой опиатам (морфин, кодеин, тебаин), явно способствует улучшению статистики по полным ремиссиям, т.к. стимулирует волю больных к выздоровлению.</p>\",\"subscribe\":\"Марта Николаева-Гарина,\\r\\nгипнотерапевт\",\"recomendation\":\"\",\"track_img\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/__video__.png?alt=media&token=1e56f472-53c1-42b4-b59f-ece2f4d71a27\",\"session_img\":\"https://fs.getcourse.ru/fileservice/file/download/a/176190/sc/235/h/4210ada4955c2d0f43fe4bfa0cd83986.png\",\"audio_track\":\"\",\"video_track\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/predmet_v_tele.mp4?alt=media&token=5614dade-1c58-47b4-a661-3e96ffd13cdc\",\"duration\":\"16 минут\"}')),
    SessionStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"title\":\"ВНУТРЕННИЙ ДОКТОР\",\"subtitle\":\"Медитация на основе представления о самопроизвольном выздоровлении\",\"type\":\"audio\",\"description\":\"<p>Медитация на основе особого представления, инициирующего в организме процесс самопроизвольного лечения, в результате которого нередко наступает так называемое спонтанное выздоровление. <br><br>\\n\\nВоздействие в этой технике широко применяется как часть традиционного лечения. По оценкам врачей, это является не столько вспомогательной, сколько базовой причиной выздоровления, т.к. является продуктивным вовлечением больного в процесс своего выздоровления, когда желание выздороветь становится уверенностью в своём выздоровлении.</p>\",\"subscribe\":\"Марта Николаева-Гарина,\\r\\nгипнотерапевт\",\"recomendation\":\"\",\"track_img\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/__audio__.png?alt=media&token=64aa8f5d-0784-4f6d-9a17-a5a86fe80c15\",\"session_img\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/__marta__.png?alt=media&token=d087316d-c073-4610-a0aa-d81621a07ac0\",\"audio_track\":\"https://firebasestorage.googleapis.com/v0/b/test-5-81007.appspot.com/o/vnutrennii_doctor.mp3?alt=media&token=1eabfe8e-799a-490a-8274-80192e87f3d2\",\"video_track\":\"\",\"duration\":\"21 минутa\"}'))
  ];
  List<SessionStruct> get Sessions => _Sessions;
  set Sessions(List<SessionStruct> value) {
    _Sessions = value;
    prefs.setStringList(
        'ff_Sessions', value.map((x) => x.serialize()).toList());
  }

  void addToSessions(SessionStruct value) {
    Sessions.add(value);
    prefs.setStringList(
        'ff_Sessions', _Sessions.map((x) => x.serialize()).toList());
  }

  void removeFromSessions(SessionStruct value) {
    Sessions.remove(value);
    prefs.setStringList(
        'ff_Sessions', _Sessions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSessions(int index) {
    Sessions.removeAt(index);
    prefs.setStringList(
        'ff_Sessions', _Sessions.map((x) => x.serialize()).toList());
  }

  void updateSessionsAtIndex(
    int index,
    SessionStruct Function(SessionStruct) updateFn,
  ) {
    Sessions[index] = updateFn(_Sessions[index]);
    prefs.setStringList(
        'ff_Sessions', _Sessions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSessions(int index, SessionStruct value) {
    Sessions.insert(index, value);
    prefs.setStringList(
        'ff_Sessions', _Sessions.map((x) => x.serialize()).toList());
  }

  int _idx = 0;
  int get idx => _idx;
  set idx(int value) {
    _idx = value;
  }

  String _currentFileNameWithExt = 'test.pz';
  String get currentFileNameWithExt => _currentFileNameWithExt;
  set currentFileNameWithExt(String value) {
    _currentFileNameWithExt = value;
  }

  bool _isShowInfo = true;
  bool get isShowInfo => _isShowInfo;
  set isShowInfo(bool value) {
    _isShowInfo = value;
    prefs.setBool('ff_isShowInfo', value);
  }

  bool _isCurrentFileExist = false;
  bool get isCurrentFileExist => _isCurrentFileExist;
  set isCurrentFileExist(bool value) {
    _isCurrentFileExist = value;
  }
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
