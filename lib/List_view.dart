import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder:(context,index)=> BuilduserItem(),
          separatorBuilder:(context,index)=> Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 30.0,
            ),
            child: Container(
              width: double.infinity,
              height:1.0,
              color: Colors.grey,
            ),
          ) ,
          itemCount:20 ,
      )
    );
  }

 Widget BuilduserItem()=> Padding(
   padding: const EdgeInsets.all(20.0),
   child: Column(
     mainAxisSize: MainAxisSize.min,
     children: [
       Row(
         children: [
           CircleAvatar(
             backgroundColor: Colors.blue[500],
             radius: 35.0,
             child: Text(
               '1',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 30.0,
                 color: Colors.black,
               ),
             ),
           ),
           SizedBox(
             width: 10.0,
           ),
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(
                 'Baidaa Muhammed',
                 style: TextStyle(
                   fontSize: 25.0,
                   fontWeight: FontWeight.bold,
                 ),
               ),
               SizedBox(
                 height: 5.0,
               ),
               Text(
                 '0184526563',
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: 20.0,
                 ),
               ),

             ],
           ),
         ],
       ),
     ],
   ),
 );
}