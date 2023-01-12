import 'package:flutter/material.dart';
import 'package:whatsapp98/wigets/calls_widget.dart';
import 'package:whatsapp98/wigets/chats_widget.dart';
import 'package:whatsapp98/wigets/status_widget.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4 ,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:const Size.fromHeight(60),
          child: AppBar(
            elevation: 0,
            title:const Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text("WhatsApp" , style: TextStyle(fontSize: 19),
              ),
            ),

            actions: [ 
             const Padding(
                padding: EdgeInsets.only(top: 8 , right: 10),
                child: Icon(Icons.search , size: 25,),
                 ),

                 PopupMenuButton(
                  onSelected: (selected){
                    if(selected == 5){
                      Navigator.pushNamed(context, "settingsPage");
                    }
                  },
                  elevation: 10,
                  padding:const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 25,
                  itemBuilder: (context) => [
                   const PopupMenuItem(
                      value: 1,
                      child: Text("New Group" , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
                     ),

                     const PopupMenuItem(
                      value: 2,
                      child: Text("New broadcast" , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
                     ),

                     const PopupMenuItem(
                      value: 3,
                      child: Text("Linked devices" , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
                     ),

                     const PopupMenuItem(
                      value: 4,
                      child: Text("Starred messages" , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
                     ),

                     const PopupMenuItem(
                      value: 5,
                      child: Text("Settings" , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
                     ),
                  ]
                   ),
            ],
          ),
        ),

        body: Column(
          children: [
            Container(
              color:const Color(0xFF075E55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
                tabs: [ 
                  // tab 1
                  Container(
                    width: 25,
                    child:const Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),

                  // tab 2
                  Container(
                    width: 85,
                    child: Tab(
                      child: Row(
                        children: [
                         const Text("CHATS"),

                         const SizedBox(width: 5,),

                          Container(
                            alignment: Alignment.center,
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            
                            child:const Text(
                              "10" ,
                               style: TextStyle(
                                fontSize: 14 , color: Color(0xFF075E55),
                                ),),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // tab 3
                  Container(width: 80, child:const Tab(child: Text("STATUS")),),
                  // tab 4
                  Container(width: 80, child:const Tab(child: Text("CALLS")),),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  // tab 1 camera
                  Container(color: Colors.black,),
                  // tab 2 chatsWidget
                 const ChatsWidget(),
                  // tab 3 StatusWidget
                 const StatusWidget(),
                  // tab 4 CallsWidget
                 const CallsWidget(),
                ],
              ) 
               ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor:const Color(0xFF075E55),
          child:const Icon(Icons.message),
        ),
      ),
       );
  }
}