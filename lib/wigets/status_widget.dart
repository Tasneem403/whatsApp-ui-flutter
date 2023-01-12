import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.symmetric(vertical: 12),
             child: Row(
                children: [
                  Container(
                    padding:const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey , width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile1.png",
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "My Status",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Today, 11:20 am",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            ),
                      ],
                    ),
                     ),
                     const Spacer(),
                      Container (
                      child:const Icon(
                        Icons.more_vert ,
                        color: Color(0xFF075E55),
                        ),
                     ),
                ],
              ),
            ),
           const SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent Updates",
                style: TextStyle(
                  fontSize: 16 ,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                ),
                ),
            ),
            for(int i = 2 ; i < 4 ; i++)
            Container(
              margin:const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding:const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.green , width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile$i.png",
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "Aya",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Today, 12:35",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            )
                      ],
                    ),
                     )
                ],
              ),
            ),

            const SizedBox(height: 20,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Viewed Updates",
                style: TextStyle(
                  fontSize: 16 ,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w500,
                ),
                ),
            ),
            for(int i = 5 ; i < 7 ; i++)
            Container(
              margin:const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  Container(
                    padding:const EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey , width: 3)
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/profile$i.png",
                        width: 55,
                        height: 55,
                        fit: BoxFit.cover,
                        ),
                    ),
                  ),
                  Padding(
                    padding:const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "Tamara",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            "Yesterday, 1:35",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            ),
                            )
                      ],
                    ),
                     )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}