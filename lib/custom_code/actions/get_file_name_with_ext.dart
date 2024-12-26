// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<String> getFileNameWithExt(String url) async {
  // Удаляем GET-параметры
  final uri = Uri.parse(url); // Разбираем URL
  final path = uri.path; // Получаем путь без GET-параметров

  // Регулярное выражение для извлечения имени файла
  final regex = RegExp(r'\/([^\/]+)$');
  final match = regex.firstMatch(path); // Ищем совпадение в пути

  if (match != null) {
    return match.group(1)!; // Возвращаем имя файла
  }

  return ''; // Возвращаем пустую строку, если совпадение не найдено
}
