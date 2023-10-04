import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationIcon extends StatelessWidget {
  final int new_notifications;
  const NotificationIcon({super.key,required this.new_notifications});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
        height: 32,
      child: Stack(
        children: [
          SvgPicture.asset('assets/images/notification.svg'), 
          Center(
            child: Text(
              '$new_notifications',
              style: TextStyle(fontSize: 10.5) ))],
      ),
    );
  }
}