import 'package:capital_app/service/dio_config.dart';
import 'package:dio/dio.dart';

class UserService {
  final Dio _dio = MyDio.instance;

  Future<List<String>> getUserNames() async {
    try {
      var result = <String>[];
      var res = await _dio.get('https://jsonplaceholder.typicode.com/users');
      List<dynamic> data = res.data;
      for (var d in data) {
        result.add(d["name"].toString());
      }
      return result;
    } catch (e) {
      return [];
    }
  }
}
