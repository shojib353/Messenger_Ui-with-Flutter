import 'package:flutter/material.dart';
import 'package:messenger_ui/screen/sms_screen.dart';
import 'package:messenger_ui/screen/sms_screen_list_view.dart';

class SmsApp extends StatelessWidget {
  const SmsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SmsScreenListView(),
    );
  }
}
