import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp98/wigets/chatButtonbar_widget.dart';
import 'package:whatsapp98/wigets/chatSample_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:const Size.fromHeight(65),
        child: AppBar(
          elevation: 0,
          leading: Padding(
            padding:const EdgeInsets.only(top: 10 , left: 5),
            child: InkWell(
             onTap: (){
              Navigator.pop(context);
              },
              child:const Icon(
                Icons.arrow_back,
                size: 25,
                ),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: EdgeInsets.only(top: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/profile1.png",
                    width: 43,
                    height: 43,
                    fit: BoxFit.cover,
                    ),
                ),

                Padding(
                  padding:const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text(
                        "Programmer",
                        style: TextStyle(fontSize: 19),
                        ),

                       const SizedBox(height: 5,),
                        Text(
                          "online",
                          style: TextStyle(fontSize: 15 , color: Colors.white.withOpacity(.8)),
                          ),
                    ],
                  ),
                   )
              ],
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 10 , right: 25),
              child: Icon(
                CupertinoIcons.video_camera_solid ,
                size: 35,
                ),
               ),

            Padding(
              padding: EdgeInsets.only(top: 10 , right: 20),
              child: Icon(
                Icons.call,
                size: 25,
              ),
               ),

            Padding(
              padding: EdgeInsets.only(top: 10 , right: 10),
              child: Icon(
                Icons.more_vert,
                size: 28,
              ),
               )   
          ],
        ),
      ),
       
       body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/whatsapp.png"),
            fit: BoxFit.cover,
          )
        ),
       child: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.only(top: 10 , left: 8 , right: 8 ,bottom: 80),
          child: Column(
            children: [
              Container(
                width: 300,
                margin:const EdgeInsets.only(bottom: 20),
                padding:const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFFFF3C2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8
                    ),
                  ]
                ),
                child:const Text(
                  "Messages and calls are end-to-end encrypted, No one outside of this chat can read or listen. Tap to learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15),
                  ),
              ),
             const ChatSample(),
             const ChatSample(),
             const ChatSample(),
             const ChatSample(),
             const ChatSample(),
             const ChatSample(),
            ],
          ),
        ),
        ),
       ),
       bottomSheet: ChatBottomBar(),
    );
  }
}