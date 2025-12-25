import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

class EmailService {
  static Future<void> sendEmail({
    required String email,
    required String message,
  }) async {
    try {
      var endPoint = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

      var response = await http.post(
        endPoint,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': 'service_631bz2g',
          'template_id': 'template_oajgdvg',
          'user_id': 'r50FZBEt0B2F2tyYj',
          'template_params': {
            'name': email, // from name - {{email}}
            'user_email': email, // reply_to - {{user_email}}
            'user_subject': 'Повідомлення з портфоліо',
            'message': message,
          },
        }),
      );

      if (response.statusCode == 200) {
        log('Email sent successfully: ${response.body}');
      } else {
        log('Failed to send email: ${response.statusCode} - ${response.body}');
        throw Exception('Failed to send email: ${response.statusCode}');
      }
    } catch (e) {
      log('Error sending email: $e');
      rethrow;
    }
  }
}
