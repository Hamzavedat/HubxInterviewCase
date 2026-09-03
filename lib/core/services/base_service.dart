import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class BaseService {
  late final Dio dio;
  final Logger logger;

  BaseService(this.logger) {
    dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: false,
        responseHeader: false,
        responseBody: false,
        error: true,
      ),
    );
  }

  Future<dynamic> getAsync(String url) async {
    try {
      final response = await dio.get(url);
      
      if (response.statusCode == 200) {
        if (response.data is String) {
          try {
            return jsonDecode(response.data);
          } catch (e) {
            return response.data;
          }
        }
        return response.data;
      } else {
        logger.e('HTTP Error: ${response.statusCode} on $url');
        return null;
      }
    } on DioException catch (e) {
      logger.e('DioException on $url: ${e.message}');
      return null;
    } catch (e) {
      logger.e('Exception on $url: $e');
      return null;
    }
  }
}
