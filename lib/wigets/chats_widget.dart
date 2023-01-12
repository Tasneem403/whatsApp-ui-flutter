import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.symmetric(horizontal: 15 , vertical: 5),
        child: Column(
          children: [
            for(int i = 1 ; i < 9 ; i++)
            InkWell(
             onTap: (){
              Navigator.pushNamed(context, "chatPage");
             } ,
             child: Container(
              margin:const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/profile$i.png",
                      height: 65,
                      width: 65,
                      fit: BoxFit.cover,
                      ),
                  ),
                    Padding(
                      padding:const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text(
                            "Programmer" ,
                             style: TextStyle(
                              fontSize: 18 ,
                               fontWeight: FontWeight.bold,
                               ),),
                               SizedBox(height: 5,),
                          Text("Hi , Programmer how are you" , style: TextStyle(fontSize: 15),),     
                        ],
                      ),
                       ),
                      const Spacer(),
                       Column(
                        children:  [
                         const Text(
                            "12:30",
                            style: TextStyle(
                              fontSize: 15 ,
                               fontWeight: FontWeight.w500,
                               color: Color(0xFF0FCE5E)
                                ),
                             ),
                            const SizedBox(height: 5,),
                             Container(
                              alignment: Alignment.center,
                              width: 27,
                              height: 27,
                              decoration: BoxDecoration(
                                color:const Color(0xFF0FCE5E),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Text(
                                "24",
                                style: TextStyle(
                                  fontSize: 13 ,
                                  color: Colors.white ,
                                  fontWeight: FontWeight.w500,
                                    ),
                                ),
                             )
                        ],
                       )
                ],
              ),
             ),
            )
          ],
        ),
      ),
    );
  }
}