import 'package:teachers_app/config/network_services/api_client.dart';
import 'package:teachers_app/config/network_services/api_result.dart';
import 'package:teachers_app/config/resource/apis_end_points.dart';

class RegisterService {
  Future<ApiResult> sendEmailOtp({payload}) async {
    ApiResult apiResult = await DioClient().post(
      ApisEndPoints.emailOtp,
      data: payload,
    );
    return apiResult;
  }

  Future<ApiResult> verifyOtp({payload}) async {
    ApiResult apiResult = await DioClient().post(
      ApisEndPoints.verifyOtp,
      data: payload,
    );
    return apiResult;
  }

  Future<ApiResult> register({payload}) async {
    ApiResult apiResult = await DioClient().post(
      ApisEndPoints.userLogin,
      data: payload,
    );
    return apiResult;
  }
}
