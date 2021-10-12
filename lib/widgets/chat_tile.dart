import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.unread})
      : super(key: key);

  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  // ChatTile(
  //     {required this.imageUrl,
  //     required this.name,
  //     required this.text,
  //     required this.time,
  //     required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: subtitleTextStyle.copyWith(
                    color: unread ? blackColor : grayColor),
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
