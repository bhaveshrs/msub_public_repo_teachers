import 'package:teachers_app/config/network_services/api_result.dart';
import 'package:teachers_app/config/network_services/api_result_service.dart';
import 'package:teachers_app/features/notification/model/notification_model.dart';
import 'package:teachers_app/features/notification/notification_service.dart';

class NotificationRepo {
  Future<RepoResult> getNotifications({required payload}) async {
    try {
      final notificationService = NotificationService();
      final response = await commonApiCall(
          notificationService.notificationsDataCall(payload: payload));

      if (response is ApiSuccess) {
        print(response.data);
        NotificationModel notificationData =
            NotificationModel.fromMap(response.data);
        return RepoSuccess(
          data: notificationData,
          message: response.message,
        );
      } else {
        return RepoFailure(
            error: (response as ApiFailure).errorMsg, data: (response).errors);
      }
    } catch (_, s) {
      print(_);
      print(s);
      return RepoFailure(error: _.toString());
    }
  }
}
