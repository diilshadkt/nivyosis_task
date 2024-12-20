import 'package:dio/dio.dart';
import 'package:nivyosis_task/core/utils/snackbar_utils.dart';
import 'package:nivyosis_task/features/home/model/get_user_model.dart';

class UserService {
  static final _dio = Dio();

  static Future<List<GetUserModel>> getUser() async {
    try {
      final response = await _dio.get(
          'https://ceikerala.niveosys.org/api-project/public/api/fetch-all-users');
      if (response.statusCode == 200) {
        List<dynamic> results = response.data;
        final userList =
            results.map((json) => GetUserModel.fromJson(json)).toList();
        return userList;
      } else {
        throw Exception('Failed to load get user');
      }
    } catch (e) {
      throw Exception('Error fetching user data: $e');
    }
  }

  static Future<void> createUser(Map<String, dynamic> userData) async {
    try {
      final response = await _dio.post(
        'https://ceikerala.niveosys.org/api-project/public/api/create-user',
        data: userData,
      );

      if (response.statusCode == 200) {
        final responseCode = response.data['response_code'];

        if (responseCode == 201) {
          SnackBarUtils.showMessage('User created successfully!');
        } else if (responseCode == 400) {
          SnackBarUtils.showMessage('User already exists!');
        } else {
          SnackBarUtils.showMessage('Unexpected error occurred.');
        }
      } else {
        throw Exception('Failed to create user');
      }
    } catch (e) {
      SnackBarUtils.showMessage(' failed');
    }
  }

  static Future<void> deleteUser(String id) async {
    try {
      final response = await _dio.post(
          'https://ceikerala.niveosys.org/api-project/public/api/delete-user/$id');

      if (response.statusCode == 200) {
        SnackBarUtils.showMessage("User deleted successfully");
      } else {
        throw Exception('Failed to delete User');
      }
    } catch (e) {
      SnackBarUtils.showMessage('Failed to delete: $e');
    }
  }
}
