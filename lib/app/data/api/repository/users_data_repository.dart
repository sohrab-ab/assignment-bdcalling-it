import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../failure/failure.dart';
import '../model/user_data_response.dart';


class UsersDataRepository{

  Future<Either<Failure, UserDataResponse>> getUser() async {

    try {
      var headers = {
        'Content-Type': 'application/json',
      };
      var request = http.Request('GET', Uri.parse('https://jsonplaceholder.typicode.com/users/'));
      request.headers.addAll(headers);
      http.StreamedResponse response = await request.send();

      print("user response ================ ${response.statusCode}");

      if (response.statusCode == 200) {
        final data = jsonDecode(await response.stream.bytesToString());
        return right(UserDataResponse.fromJson({"userList": data}));
      }
      else {
        return left(const Failure());
      }
    }
    catch (e) {
      return left(const Failure());
    }
  }


}