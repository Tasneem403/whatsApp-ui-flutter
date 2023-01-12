import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:const EdgeInsets.only(right: 80),
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.receive),
            child: Container(
              padding:const EdgeInsets.only(top: 10 , bottom: 10 , right: 10 ,left: 25),
              decoration:const BoxDecoration(
                color: Colors.white,
              ),
              child:const Text(
                "Hi, Developer, How are you?",
                style: TextStyle(
                  fontSize: 17
                ),
                ),
            ),
          ),
           ),

          Container(
          margin:const EdgeInsets.only(top: 20 ,bottom: 15 , left: 80),
          alignment: Alignment.centerRight,
          child: ClipPath(
            clipper: UpperNipMessageClipperTwo(MessageType.send),
            child: Container(
              padding:const EdgeInsets.only(top: 10 , bottom: 10 , right: 20 ,left: 10),
              decoration:const BoxDecoration(
                color: Color(0xFFE4FDCA),
              ),
              child:const Text(
                "Hi, Programmer, i am fine and well. thanks for asking and what about you. i hope you will be also fine.",
                style: TextStyle(
                  fontSize: 17
                ),
                ),
            ),
          ),
           ),
      ],
    );
  }
}