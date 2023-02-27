
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:get_storage/get_storage.dart';
import 'package:mind_smith/app/routes/app_pages.dart';
import 'package:mind_smith/costants/app_color.dart';
import 'package:mind_smith/costants/sizeConstant.dart';
import 'package:mind_smith/global/constants/app_string.dart';
import 'package:mind_smith/main.dart';
import 'package:mind_smith/widgets/custom_dialogs.dart';

class MethodType {
  static const String Post = "POST";
  static const String Get = "GET";
  static const String Put = "PUT";
  static const String Delete = "DELETE";

}

class NetworkClient {
  static NetworkClient? _shared;

  NetworkClient._();

  static NetworkClient get getInstance =>
      _shared = _shared ?? NetworkClient._();

  final dio = Dio();



  Map<String, dynamic> getAuthHeaders({String? tokenRegister}) {
    Map<String, dynamic> authHeaders = Map<String, dynamic>();
    GetStorage box = GetStorage();
    String token = "";
    if (box.read(Constant.tokenKey) != null) {
      token = box.read(Constant.tokenKey);
      print(token);
      // token =
      //     "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicm9sZSI6IkFkbWluIiwiaWF0IjoxNjUxNTAzNDExLCJleHAiOjE2NTE1ODk4MTF9.DkJhSf78gpX86gzruLiTs_PKSXl4Slj-XzELfztLa6k";
    }
    if (tokenRegister != null) {
      dio.options.headers["x-api-key"] = tokenRegister;
    } else {
      if (!isNullEmptyOrFalse(token)) {
        dio.options.headers["x-api-key"] = token;
      } else {
        authHeaders["Content-Type"] = "application/json";
        dio.options.headers["x-api-key"] =
            "ezponP2UhT47IX9TQ6RJO8aKeJVV5QFn4l3wMXzg";
      }
    }

    return authHeaders;
  }

  Map<String, dynamic> getAuthHeadersForVerify(String token) {
    Map<String, dynamic> authHeaders = Map<String, dynamic>();

    // } else {
    dio.options.headers["Authorization"] = "Bearer " + token;
    // } else {
    authHeaders["Content-Type"] = "application/json";
    // }

    return authHeaders;
  }

  Future callApi(
    BuildContext context,
    String baseUrl,
    String command,
    String method, {
    var params,
    Map<String, dynamic>? headers,
    Function(dynamic response, String message)? successCallback,
    Function(dynamic message, String statusCode)? failureCallback,
  }) async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      failureCallback!("", "No Internet Connection");
      getDialogForNetwork(
        title: "Error",
        desc: "No Internet Connection.",
        onTap: () {
          Get.offAllNamed(Routes.SPLASH);
        },
      );
    }

    dio.options.validateStatus = (status) {
      return status! <= 505;
    };
    dio.options.connectTimeout = 50000 as Duration?; //5s
    dio.options.receiveTimeout = 50000 as Duration?;

    if (headers != null) {
      for (var key in headers.keys) {
        dio.options.headers[key] = headers[key];
      }
    }

    switch (method) {
      case MethodType.Post:
        Response response = await dio.post(baseUrl + command, data: params);
        parseResponse(context, response,
            successCallback: successCallback!,
            failureCallback: failureCallback!);
        break;
      case MethodType.Get:
        Response response =
            await dio.get(baseUrl + command, queryParameters: params);
        parseResponse(context, response,
            successCallback: successCallback!,
            failureCallback: failureCallback!);
        break;

      case MethodType.Put:
        Response response = await dio.put(baseUrl + command, data: params);
        parseResponse(context, response,
            successCallback: successCallback!,
            failureCallback: failureCallback!);
        break;

      case MethodType.Delete:
        Response response = await dio.delete(baseUrl + command, data: params);
        parseResponse(context, response,
            successCallback: successCallback!,
            failureCallback: failureCallback!);
        break;

      default:
    }
  }

  parseResponse(BuildContext context, Response response,
      {Function(dynamic response, String message)? successCallback,
      Function(dynamic statusCode, String message)? failureCallback}) {
    // app.resolve<CustomDialogs>().showCircularDialog(context);
    String statusCode = "response.data['code']";
    String message = "response.data['message']";
    // if (response.statusCode == 401) {
    //   box.remove(Constant.tokenKey);
    //   Get.offAllNamed(Routes.LOGIN);
    // } else
    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 203) {
      // hideDialog(true, context);
      if (isNullEmptyOrFalse(response.data)) {
        successCallback!(response.statusCode, message);
        return;
      }
      if (response.data is Map<String, dynamic> ||
          response.data is List<dynamic>) {
        successCallback!(response.data, message);
        return;
      } else if (response.data is List<Map<String, dynamic>>) {
        successCallback!(response.data, response.statusMessage.toString());
        return;
      } else {
        failureCallback!(response.data, response.statusMessage.toString());
        return;
      }
    } else {
      // hideDialog(true, context);

      failureCallback!(response.data, response.statusMessage.toString());
      return;
    }
  }

  void hideDialog(bool isProgress, BuildContext context) {
    if (isProgress) {
      app!.resolve<CustomDialogs>().hideCircularDialog(context);
    }
  }

  getDialog(
      {String title = "Error", String desc = ""}) {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: title,
        content: Text(desc),
        buttonColor: primaryColor,
        textConfirm: "Ok",
        confirmTextColor: Colors.white,
        onConfirm: () {
          Get.back();
        });
  }

  getDialogForNetwork(
      {String title = "Error",
      String desc = "",
      VoidCallback? onTap}) {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: title,
        content: Text(desc),
        buttonColor: primaryColor,
        textConfirm: "Ok",
        confirmTextColor: Colors.white,
        onConfirm: onTap ?? () {});
  }
}
