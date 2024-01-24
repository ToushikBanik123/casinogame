import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models/UserModel.dart';

class ApiService {
  static const String apiUrl =
      "https://ffbrothers.in/game_project/API/user_login.php";

  Future<UserModel?> loginUser(String username, String password) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      body: {'user_name': username, 'password': password},
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      if (data.containsKey('user_details')) {
        return UserModel.fromJson(data['user_details']);
      }
    }

    return null;
  }
}
