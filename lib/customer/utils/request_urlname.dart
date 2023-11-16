// import 'package:dio/dio.dart';

// import 'tokens.dart';

// Map<String, dynamic> header = {'Content-Type': 'application/json'};

// class ApiMethod {
//   static getDioHeaderRequest(String url) async {
//     try {
//       dynamic tokn = await Tokens.getCurrentUser();
//       header['Authorization'] = "Bearer $tokn";

//       Response response =
//           await Dio().get(url, options: Options(headers: header));

//       return response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);
//       return e.response?.data;
//       // return e;
//     }
//   }

//   static postDioHeaderRequest(String url, {dynamic data}) async {
//     dynamic tokn = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $tokn";

//     try {
//       print(data);
//       Response response =
//           await Dio().post(url, data: data, options: Options(headers: header));

//       return response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);
//       return e.response?.data;
//     }
//   }

// // // Post Reauest
//   static postDioRequest(String url, {dynamic data}) async {
//     try {
//       Response response =
//           await Dio().post(url, data: data, options: Options(headers: header));

//       // print(response.data);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return response.data;
//       }
//       if (response.statusCode == 400) {
//         return response.data;
//       }
//     } on DioException catch (e) {
//       print(e);
//       return e.response?.data;
//     }
//   }

// // // PUT request
//   static Future putDioHeaderRequest(String url, dynamic data) async {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response =
//           await Dio().put(url, data: data, options: Options(headers: header));
//       print("Respone ${response.statusCode}");
//       print("Respone ${response.data}");
//       return response.data;
//     } on DioException catch (e) {
//       print(e.response?.data);
//       return e.response?.data;
//     }
//   }

// // // Delete Request
//   static Future delDioHeaderRequest(String url, dynamic body) async {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response = await Dio()
//           .delete(url, data: body, options: Options(headers: header));
//       return response.data;
//     } on DioException catch (e) {
//       return e.response?.data;
//     }
//   }
// }

// class StreamApiMethod {
//   static getDioHeaderRequest(String url) async* {
//     try {
//       dynamic toks = await Tokens.getCurrentUser();
//       header['Authorization'] = "Bearer $toks";

//       Response response =
//           await Dio().get(url, options: Options(headers: header));

//       // print(response.data);
//       // if (response.data['success'] == 0) {
//       //   yield response.data['data'];
//       // } else {
//       //   yield response.data['msg'];
//       // }
//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);
//       yield e.response?.data;
//       // return e;
//     }
//   }

//   static postDioHeaderRequest(String url, {dynamic data}) async* {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response =
//           await Dio().post(url, data: data, options: Options(headers: header));
//       // print("Respone ${response.statusCode}");
//       print("Respone ${response.data}");

//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);

//       yield e.response?.data;
//     }
//   }

//   static putDioHeaderRequest(String url, {dynamic data}) async* {
//     dynamic toks = await Tokens.getCurrentUser();
//     header['Authorization'] = "Bearer $toks";

//     try {
//       Response response =
//           await Dio().put(url, data: data, options: Options(headers: header));
//       // print("Respone ${response.statusCode}");
//       print("Respone ${response.data}");

//       yield response.data;
//     } on DioException catch (e) {
//       print(e);
//       print(e.response?.data);

//       yield e.response?.data;
//     }
//   }
// }

// // // ! URLNAME
// class URLName {
//   static const localUrl = "http://10.0.2.2:5000/";

//   static const chatSocketUrl =
//       "wss://gvitg3ymq8.execute-api.ap-south-1.amazonaws.com/Prod?usrType=seller&id=";

//   ///API onBoarding************************************************************************

//   static const baseUserUrl =
//       "https://thp88hi2u7.execute-api.ap-south-1.amazonaws.com/Prod/";

//   static const socketChatUrl =
//       "wss://0bhiie2wd3.execute-api.ap-south-1.amazonaws.com/Prod?userType=Customer";

//   static const socketNotificationUrl =
//       "wss://nkritgvbze.execute-api.ap-south-1.amazonaws.com/Prod?userType=Customer";

//   static const baseCommonUrl =
//       "https://nt8kefb1dc.execute-api.ap-south-1.amazonaws.com/Prod/";

//   ///API onBoarding************************************************************************
//   static const sendOtp = "${baseUserUrl}astrologer/sendOtp";
//   static const signInUrl = "${baseUserUrl}astrologer/signIn";
//   static const profileUrl = "${baseUserUrl}astrologer/profile";
//   static const profileStatusUrl = "${baseUserUrl}astrologer/profilestatus";
//   static const profileUploadUrl = "${baseUserUrl}astrologer/upload/profile";
//   // static const chatCustomerProfileUrl = "${baseUserUrl}chats/customer";

//   static const getFollowerUrl = "${baseCommonUrl}astrologer/follower";

//   // // chat video audio status or on off
//   static const chatOnOffUrl = "${baseUserUrl}astrologer/onoff/chat";
//   static const audioOnOffUrl = "${baseUserUrl}astrologer/onoff/audio";
//   static const videoOnOffUrl = "${baseUserUrl}astrologer/onoff/video";
//   static const statusOnOffUrl = "${baseUserUrl}astrologer/onoff/status";

//   // //  waitlist or notification
//   static const waitListUrl = "${baseCommonUrl}waitlist/astrologer";

//   //  // review
//   static const reviewUrl = "${baseCommonUrl}review/astrologer";
//   static const reviewReplyUrl = "${baseCommonUrl}review/astrologer/reply";
//   static const reviewPinnedUrl = "${baseCommonUrl}review/astrologer/pinned";
//   static const reviewDeleteUrl = "${baseCommonUrl}review/astrologer/delete";

//   // // wallet & transcation
//   static const walletCreateUrl = "${baseCommonUrl}wallet/astrologer/create";
//   static const walletBalanceUrl = "${baseCommonUrl}wallet/astrologer/balance";
//   static const walletReversalUrl = "${baseCommonUrl}wallet/astrologer/reversal";
//   static const transcationUrl = "${baseCommonUrl}wallet/astrologer/transcation";

//   // //  send or response notification
//   static const notificationSendUrl = "${baseCommonUrl}notification/sender";
//   static const notificationReponseUrl = "${baseCommonUrl}notification/response";

//   // // order
//   static const orderUrl = "${baseCommonUrl}order";
// }
