import 'package:dio/dio.dart';
import 'package:nivyosis_task/features/home/model/get_user_model.dart';

class GetUserService {
  static final _dio = Dio();

  static Future<List<GetUserModel>> getFoodProducts() async {
    try {
      final response = await _dio.get(
          'https://ceikerala.niveosys.org/api-project/public/api/fetch-all-users');
      if (response.statusCode == 200) {
        List<dynamic> results = response.data['results'];
        final productList =
            results.map((json) => GetUserModel.fromJson(json)).toList();
        return productList;
      } else {
        throw Exception('Failed to load get user');
      }
    } catch (e) {
      throw Exception('Error fetching user data: $e');
    }
  }
}
