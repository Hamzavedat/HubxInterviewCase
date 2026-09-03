import 'package:hubx_case/core/di/app_container.dart';
import 'package:hubx_case/core/services/base_service.dart';
import 'package:hubx_case/core/constants/app_environment.dart';
import 'package:hubx_case/data/models/base_response.dart';
import 'package:hubx_case/data/models/category_model.dart';
import 'package:hubx_case/data/models/question_model.dart';

import 'package:logger/logger.dart';

class HomeService extends BaseService {
  HomeService() : super(AppContainer.getIt<Logger>());

  Future<BaseResponse<CategoryModel>> getCategories() async {
    final dynamic data = await getAsync('${AppEnvironment.baseUrl}/getCategories');

    if (data is Map<String, dynamic> && data.isNotEmpty) {
      return BaseResponse<CategoryModel>.fromJson(
        data,
        (json) => CategoryModel.fromJson(json as Map<String, dynamic>),
      );
    }

    return const BaseResponse<CategoryModel>(
      data: [],
      meta: MetaData(
        pagination: PaginationMeta(page: 0, pageSize: 0, pageCount: 0, total: 0),
      ),
    );
  }

  Future<List<QuestionModel>> getQuestions() async {
    final dynamic data = await getAsync('${AppEnvironment.baseUrl}/getQuestions');

    if (data is List) {
      return data.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>)).toList();
    }

    return [];
  }
}
