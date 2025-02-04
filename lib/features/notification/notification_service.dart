import 'package:teachers_app/config/network_services/api_client.dart';
import 'package:teachers_app/config/network_services/api_result.dart';
import 'package:teachers_app/config/resource/apis_end_points.dart';

class NotificationService {
  Future<ApiResult> notificationsDataCall({payload}) async {
    ApiResult apiResult =
        await DioClient().post(ApisEndPoints.notificationListing, data: payload);
    return apiResult;
  }
}
