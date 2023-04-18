import 'dart:io';

import 'package:dio/dio.dart';

class MyDio {
  static final MyDio _singleton = MyDio._internal();

  final options = BaseOptions(headers: {
    HttpHeaders.acceptHeader: "json/application/json",
  });

  static late Dio instance;

  factory MyDio() => _singleton;

  MyDio._internal();

  void createDioInstance() {
    instance = Dio(options);
  }
}
