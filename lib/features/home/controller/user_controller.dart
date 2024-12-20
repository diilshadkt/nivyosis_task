import 'package:nivyosis_task/features/home/model/get_user_model.dart';
import 'package:nivyosis_task/features/home/service/user_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user_controller.g.dart';

@riverpod
class UserController extends _$UserController {
  @override
  String? build() {
    return null;
  }

  Future<List<GetUserModel>> getUser() async {
    try {
      final userList = await UserService.getUser();

      return userList;
    } catch (e) {
      return [];
    }
  }
}
