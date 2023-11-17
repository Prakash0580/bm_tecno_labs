import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';

import 'fcm_key.dart';

class ContactUsResp {
  Future<dynamic> addContactUs(
      {required String email,
      required String msg,
      required String name,
      required String mobile}) async {
    try {
      final CollectionReference collectionRef =
          FirebaseFirestore.instance.collection('users');
      // Check if the email exists
      QuerySnapshot emailQuery =
          await collectionRef.where('email', isEqualTo: email).limit(1).get();
      // Check if the mobile number exists
      QuerySnapshot mobileQuery =
          await collectionRef.where('mobile', isEqualTo: mobile).limit(1).get();
      log("mobile  => $mobileQuery");
      log("email  => $emailQuery");

      if (emailQuery.docs.isNotEmpty || mobileQuery.docs.isNotEmpty) {
        // Document exists, update the list item
        String docId = emailQuery.docs.isNotEmpty
            ? emailQuery.docs.first.id
            : mobileQuery.docs.first.id;
        await collectionRef.doc(docId).update({
          'msg': FieldValue.arrayUnion([msg]),
          'up_date': DateTime.now()
        });
        log('List item updated successfully!');
      } else {
        await collectionRef.add({
          'name': name,
          'email': email,
          'mobile': mobile,
          'msg': [msg],
          'cr_date': DateTime.now(),
          'up_date': DateTime.now()
        });
      }

      await ContactUsResp()
          .sendMsg(title: '$name do some query', body: '$mobile \n$msg');
    } catch (err) {
      log('Err => $err');
      // Handle any errors
      return false;
    }
  }

  Future sendMsg({required String title, String? body}) async {
    try {
      final CollectionReference collectionRef =
          FirebaseFirestore.instance.collection('adminusers');

      QuerySnapshot userQuery = await collectionRef.limit(1).get();

      if (userQuery.docs.isNotEmpty) {
        // Retrieve the data of the first user
        Map firstUserData = userQuery.docs.first.data() as Map;
        log('First User Data: $firstUserData');

        var data = {
          'to': firstUserData['notificationToken'],
          'notification': {
            'title': title,
            'body': body,
            "sound": "jetsons_doorbell.mp3"
          },
          'android': {
            'notification': {
              'notification_count': 23,
            },
          },
          'data': {'type': 'message', 'id': '1'}
        };

        await Dio().post('https://fcm.googleapis.com/fcm/send',
            data: jsonEncode(data),
            options: Options(headers: {
              'Content-Type': 'application/json; charset=UTF-8',
              'Authorization': 'key=$fcmKey'
            }));
      }

      // // Check if the email exists
      // QuerySnapshot notificationToken = await collectionRef.limit(1).get();
    } catch (err) {
      log(err.toString());
    }
  }
}
