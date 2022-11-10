import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';

import '../../../utils/constants/api_constants.dart';

class ApiClient extends GetxService {
  final String appBaseUrl = ApiConstants.baseUrl;

  // final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  static const String noInternetMessage = 'Connection to API server failed due to internet connection';
  final int timeoutInSeconds = 30;

  // String token;
  final Map<String, String> _mainHeaders = {};

  // ApiClient({ }) {
  //   // token = sharedPreferences.getString(AppConstants.TOKEN);
  //   // debugPrint('Token: $token');
  //   // AddressModel _addressModel;
  //   // try {
  //   //   _addressModel = AddressModel.fromJson(
  //   //       jsonDecode(sharedPreferences.getString(AppConstants.USER_ADDRESS)));
  //   //   print('-------------');
  //   //   print(_addressModel.toJson());
  //   // } catch (e) {}
  //   // updateHeader(token, _addressModel == null ? null : _addressModel.zoneIds,
  //   //     sharedPreferences.getString(AppConstants.LANGUAGE_CODE));
  // }

  // void updateHeader(String token, List<int> zoneIDs, String languageCode) {
  //   _mainHeaders = {
  //     'Content-Type': 'application/json; charset=UTF-8',
  //     AppConstants.ZONE_ID: zoneIDs != null ? jsonEncode(zoneIDs) : null,
  //     AppConstants.LOCALIZATION_KEY:
  //         languageCode ?? AppConstants.languages[0].languageCode,
  //     'Authorization': 'Bearer $token'
  //   };
  // }

  Future<Response> getData(String uri, {Map<String, dynamic>? query, Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      http.Response response = await http
          .get(
            Uri.parse(appBaseUrl + uri),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postData(String uri, Map<String, dynamic> body, {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      http.Response response = await http
          .post(
            Uri.parse(appBaseUrl + uri),
            body: body,
            encoding: Encoding.getByName("utf-8"),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> postMultipartData(String uri, Map<String, String> body, List<MultipartBody> multipartBody,
      {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      http.MultipartRequest request = http.MultipartRequest('POST', Uri.parse(appBaseUrl + uri));
      request.headers.addAll(headers ?? _mainHeaders);
      for (MultipartBody multipart in multipartBody) {
        if (foundation.kIsWeb) {
          Uint8List list = await multipart.file.readAsBytes();
          http.MultipartFile part = http.MultipartFile(
            multipart.key,
            multipart.file.readAsBytes().asStream(),
            list.length,
            filename: basename(multipart.file.path),
            contentType: MediaType('image', 'jpg'),
          );
          request.files.add(part);
        } else {
          File file = File(multipart.file.path);
          request.files.add(http.MultipartFile(
            multipart.key,
            file.readAsBytes().asStream(),
            file.lengthSync(),
            filename: file.path.split('/').last,
          ));
        }
      }
      request.fields.addAll(body);
      http.Response response = await http.Response.fromStream(await request.send());
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> putData(String uri, dynamic body, {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      debugPrint('====> API Body: $body');
      http.Response response = await http
          .put(
            Uri.parse(appBaseUrl + uri),
            body: jsonEncode(body),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Future<Response> deleteData(String uri, {Map<String, String>? headers}) async {
    try {
      debugPrint('====> API Call: $uri\nHeader: $_mainHeaders');
      http.Response response = await http
          .delete(
            Uri.parse(appBaseUrl + uri),
            headers: headers ?? _mainHeaders,
          )
          .timeout(Duration(seconds: timeoutInSeconds));
      return handleResponse(response, uri);
    } catch (e) {
      return const Response(statusCode: 1, statusText: noInternetMessage);
    }
  }

  Response handleResponse(http.Response response, String uri) {
    dynamic body;

    try {
      body = jsonDecode(response.body);
    } catch (e) {
      debugPrint("$e");
    }

    Response responseData = Response(
      body: body ?? response.body,
      bodyString: response.body.toString(),
      headers: response.headers,
      statusCode: response.statusCode,
      statusText: response.reasonPhrase,
    );
    // if (response.statusCode != 200 &&
    //     response.body != null &&
    //     response.body is! String) {
    //   if (response.body.toString().startsWith('{errors: [{code:')) {
    //     ErrorResponse errorResponse = ErrorResponse.fromJson(response.body);
    //     response = Response(
    //         statusCode: response.statusCode,
    //         body: response.body,
    //         statusText: errorResponse.errors[0].message);
    //   } else if (response.body.toString().startsWith('{message')) {
    //     response = Response(
    //         statusCode: response.statusCode,
    //         body: response.body,
    //         statusText: response.body['message']);
    //   }
    // } else if (response.statusCode != 200 && response.body == null) {
    //   response = Response(statusCode: 0, statusText: noInternetMessage);
    // }
    debugPrint('====> API Response: [${response.statusCode}] $uri\n${response.body}');
    return responseData;
  }
}

class MultipartBody {
  String key;
  XFile file;

  MultipartBody(this.key, this.file);
}
