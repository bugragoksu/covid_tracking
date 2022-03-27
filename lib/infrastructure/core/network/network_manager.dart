import 'package:covid_tracking/infrastructure/core/exceptions/response_exception.dart';
import 'package:covid_tracking/infrastructure/core/network/network_config.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class NetworkManager {
  NetworkManager(this._dio);

  final Dio _dio;

  Future<Response> get(String url, {Map<String, dynamic>? queryParameters}) async {
    try {
      return await _dio.get(url, queryParameters: queryParameters);
    } on DioError catch (e) {
      throw (ResponseException(
        message: e.message,
        statusCode: e.response?.statusCode,
      ));
    }
  }
}

@module
abstract class DioModule {
  Dio get dio => Dio(
        BaseOptions(
          baseUrl: NetworkConfig.baseUrl,
          headers: NetworkConfig.headers,
        ),
      );
}
