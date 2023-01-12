import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
        child: Column(
          children: [
            for(int i = 1 ; i < 4 ; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/profile$i.png",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                      ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text(
                          "Tahani",
                          style: TextStyle(
                            fontSize: 18 ,
                             fontWeight: FontWeight.bold ,
                             ),
                          ),
                         const SizedBox(height: 5,),
                        Row(
                          children:const [
                            Icon(
                              Icons.call_made ,
                               size: 19,
                               color: Color(0xFF075E55),
                               ),
                            SizedBox(width: 5,),
                            Text(
                              "(1) Today, 9:00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54
                              ),
                              ),   
                          ],
                        ),
                      ],
                    ),
                  ),
                     const Spacer(),
                        Container(
                          child:const Icon(Icons.call_sharp, color: Color(0xFF075E55),),
                        ),
                ],
              ),
            ),

            for(int i = 4 ; i < 6 ; i++)
            Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/profile$i.png",
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                      ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       const Text(
                          "Tahani",
                          style: TextStyle(
                            fontSize: 18 ,
                             fontWeight: FontWeight.bold ,
                             ),
                          ),
                         const SizedBox(height: 5,),
                        Row(
                          children:const [
                            Icon(
                              Icons.call_received,
                               size: 19,
                               color: Colors.red,
                               ),
                            SizedBox(width: 5,),
                            Text(
                              "(1) Today, 9:00",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54
                              ),
                              ),   
                          ],
                        ),
                      ],
                    ),
                  ),
                     const Spacer(),
                        Container(
                          child:const Icon(
                            Icons.videocam,
                            color: Color(0xFF075E55),
                            size: 27,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}