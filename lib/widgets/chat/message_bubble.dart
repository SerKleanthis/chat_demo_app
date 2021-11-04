import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String userId;
  final String username;
  final String message;
  final bool isMe;

  const MessageBubble({
    Key? key,
    required this.userId,
    required this.username,
    required this.message,
    required this.isMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isMe) const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: isMe ? Colors.grey.shade300 : Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft:
                  !isMe ? const Radius.circular(0) : const Radius.circular(12),
              bottomRight:
                  isMe ? const Radius.circular(0) : const Radius.circular(12),
            ),
          ),
          width: 140,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment:
                !isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
            children: [
              Text(
                username,
                style: TextStyle(
                  color: !isMe ? Colors.white : Colors.black,
                  fontSize: 16,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: !isMe ? Colors.white : Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
