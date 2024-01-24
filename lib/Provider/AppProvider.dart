import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../api/api.dart';
import '../api/models/UserModel.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  late UserModel _user;

  get user => _user;

  // Future<void> loginUser(String username, String password) async {
  //   try {
  //     UserModel? user = await _apiService.loginUser(username, password);
  //
  //     if (user != null) {
  //       // Set the user data and notify listeners
  //       _user = user;
  //       notifyListeners();
  //     } else {
  //       // Handle login failure
  //       // You may want to throw an exception or handle it in a different way
  //       print('Login Failed: Invalid credentials');
  //     }
  //   } catch (error) {
  //     // Handle errors such as network issues, server errors, etc.
  //     print('Error: $error');
  //   }
  //   notifyListeners();
  // }

  Future<void> loginUser(String username, String password) async {
    try {
      UserModel? user = await _apiService.loginUser(username, password);

      if (user != null) {
        // Set the user data and notify listeners
        _user = user;
        Fluttertoast.showToast(
          msg: "Welcome ${user.name}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        notifyListeners();
      } else {
        // Handle login failure
        // You may want to throw an exception or handle it in a different way
        Fluttertoast.showToast(
          msg: "Login Failed: Invalid credentials",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      }
    } catch (error) {
      // Handle errors such as network issues, server errors, etc.
      print('Error: $error');
      Fluttertoast.showToast(
        msg: "Error: Network issues",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
    notifyListeners();
  }



}
