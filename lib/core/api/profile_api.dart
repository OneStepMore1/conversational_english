import 'package:conversational_english/core/models/user_model.dart';
import 'package:conversational_english/util/services/dio_service.dart';
import 'package:dio/dio.dart';

import '../models/active_models_model.dart';

class ProfileApi {
  late final String _userTokenPath = 'auth/info';
  late final String _activeModePath = 'v1/model/active';

  Future<MUserInfo> userInfoApi() async {
    Response res = await makeRequest(
      path: _userTokenPath,
      method: HTTPMethod.get,
    );
    return MUserInfo.fromJson(res.data);
  }

  Future<MActiveModels> activeModelsApi() async {
    Response res = await makeRequest(
      path: _activeModePath,
      method: HTTPMethod.get,
    );
    return MActiveModels.fromJson(res.data);
  }
}
